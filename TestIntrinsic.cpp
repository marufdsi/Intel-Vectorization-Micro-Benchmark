#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>
using namespace std;


int main(){
  typedef int32_t index, sint, node, count;
  typedef double edgeweight;

  int z = 40;
  int node_sort_by_deg[z];
  int outDegree[z];


  /******/
  index _deg = 100, u=0;
  count neigh_counter = 0;
  count vertex_count = 0;
  node *pnt_outEdges, *outEdges, *zeta;
  index *pnt_neigh_comm;
  node *ignorance_vertex;
  edgeweight *pnt_affinity;
  ignorance_vertex = (node*)malloc(sizeof(node)*_deg);
  pnt_neigh_comm = (index*)malloc(sizeof(index)*_deg);
  pnt_affinity = (edgeweight *)malloc(sizeof(edgeweight)*_deg);
  outEdges = (node*)malloc(sizeof(node)*_deg);
  zeta = (node*)malloc(sizeof(node)*_deg);
#pragma omp simd
  for(index edge=0; edge<_deg; ++edge){
    outEdges[edge] = edge;
    zeta[edge] = edge%5;
  }
  pnt_outEdges = &outEdges[0];
  edgeweight defaultEdgeWeight = 1.0;
#pragma omp simd
  for(index edge=0; edge<_deg; ++edge){
    pnt_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
  }
  cout<<"Edges: ";
  for(index edge=0; edge<_deg; ++edge){
    cout<<pnt_outEdges[edge]<<" ";
  }
  cout<<endl<<"Community: ";
  for(index edge=0; edge<_deg; ++edge){
    cout<<zeta[pnt_outEdges[edge]]<<" ";
  }
  pnt_affinity[zeta[u]] = 0.0;
  cout<<endl<<"affinity: ";
  for(index edge=0; edge<_deg; ++edge){
    cout<<zeta[pnt_outEdges[edge]]<<" = "<<pnt_affinity[zeta[pnt_outEdges[edge]]]<<" ";
  }
  cout<<endl;



  index neighbor_processed = (_deg/16)*16;
  index index_of_remaining_vertex = neighbor_processed;
  // Calculate affinity. 512 register, so it can load 16, 32 bit integer or floating point.
  // 512 bit floating register initialize by all 0.0
  const   __m512 fl_set0 = _mm512_set1_ps(0.0);
  // 512 bit floating register initialize by all -1.0
  const   __m512 fl_set1 = _mm512_set1_ps(-1.0);
  // 512 bit integer register initialize by all 0
  const   __m512i set0 = _mm512_set1_epi32(0x00000000);
  // 512 bit integer register initialize by all -1
  const   __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);

    const   __m512 default_edge_weight = _mm512_set1_ps(defaultEdgeWeight);
    const   __m512i check_self_loop = _mm512_set1_epi32(u);
    index terminate = 0;
    while (1) {
      vertex_count = 0;
      for (index i = 0; i < neighbor_processed; i += 16) {
        // Load at most 16 neighbor vertices.
        __m512i v_vec = _mm512_loadu_si512((__m512i *) &pnt_outEdges[i]);
        // Mask to find u != v
        const __mmask16 self_loop_mask = _mm512_cmpneq_epi32_mask(check_self_loop, v_vec);
        // Gather community of the neighbor vertices.
        __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
        int * val_V = (int *)&C_vec;
        __m256i C_vec1 = _mm512_extracti32x8_epi32(C_vec, 0);
        __m256i C_vec2 = _mm512_extracti32x8_epi32(C_vec, 1);
        int * val_h1 = (int *)&C_vec1;
        int * val_h2 = (int *)&C_vec2;
        cout<<"Community Loaded: ";
        for (int j = 0; j < 16; ++j) {
          cout<<val_V[j]<<" ";
        }
        cout<<endl;
        cout<<"First Half Community: ";
        for (int j = 0; j < 8; ++j) {
          cout<<val_V[j]<<" ";
        }
        cout<<endl;
        cout<<"Second Half Community: ";
        for (int j = 0; j < 8; ++j) {
          cout<<val_V[j]<<" ";
        }
        cout<<endl;

        // Gather affinity of the corresponding community.
//        __m512 affinity_vec = _mm512_i32gather_ps(C_vec, &pnt_affinity[0], 4);
        __m512d affinity_vec1 = _mm512_i32gather_pd(_mm512_extracti32x8_epi32(C_vec, 0), &pnt_affinity[0], 8);
        __m512d affinity_vec2 = _mm512_i32gather_pd(_mm512_extracti32x8_epi32(C_vec, 1), &pnt_affinity[0], 8);
        __m512 affinity_vec = _mm512_insertf32x8(_mm512_castps256_ps512(_mm512_cvt_roundpd_ps(affinity_vec1, _MM_FROUND_TO_NEAREST_INT |_MM_FROUND_NO_EXC)), _mm512_cvt_roundpd_ps(affinity_vec2, _MM_FROUND_TO_NEAREST_INT |_MM_FROUND_NO_EXC), 1);

        float * float_val = (float *)&affinity_vec;

        cout<<"Affinity Loaded: ";
        for (int j = 0; j < 16; ++j) {
          cout<<float_val[j]<<" ";
        }
        cout<<endl;

        // Mask to find out the new community that contains -1.0 value
        const __mmask16 new_comm_mask = _mm512_kand(_mm512_cmpeq_ps_mask(fl_set1, affinity_vec), self_loop_mask);
        // Detect conflict of the community
        __m512i C_conflict = _mm512_conflict_epi32(C_vec);
        // Calculate mask using NAND of C_conflict and set1
        const __mmask16 mask = _mm512_kand(_mm512_testn_epi32_mask(C_conflict, set1), self_loop_mask);

        // Now we need to collect the distinct neighbor community and vertices that didn't process yet.
        __m512i distinct_comm, v_not_processed;
        __m512 w_not_processed;
        // It will find out the distinct community but we don't know the length.
        distinct_comm = _mm512_mask_compress_epi32(set0, _mm512_kand(mask, new_comm_mask), C_vec);
        // It will calculate the ignorance vertices in the previous calculation, but we don't know the length.
        v_not_processed = _mm512_mask_compress_epi32(set0, _mm512_kand(_mm512_knot(mask), self_loop_mask), v_vec);
        // Count the set bit from the mask for neighbor community
        sint neigh_cnt = _mm_popcnt_u32((unsigned) _mm512_kand(mask, new_comm_mask));
        // Count the set bit from the mask for ignore vertices
        sint vertex_cnt = _mm_popcnt_u32((unsigned)_mm512_kand(_mm512_knot(mask), self_loop_mask));
        // Store distinct neighbor community
        _mm512_storeu_si512(&pnt_neigh_comm[neigh_counter], distinct_comm);
        // Store ignore vertices
        _mm512_storeu_si512(&ignorance_vertex[vertex_count], v_not_processed);
        // Increment neighbor community count
        neigh_counter += neigh_cnt;
        // Increment ignore vertices count
        vertex_count += vertex_cnt;

        // Assign 0.0 in the affinity that contains -1.0 right now.
//        _mm512_mask_i32scatter_ps(&pnt_affinity[0], new_comm_mask, C_vec, fl_set0, 4);
        affinity_vec = _mm512_mask_mov_ps(affinity_vec, new_comm_mask, fl_set0);
        // Add edge weight to the affinity and if mask doesn't set load from affinity
        affinity_vec = _mm512_mask_add_ps(affinity_vec, mask, affinity_vec, default_edge_weight);
        // Scatter affinity value to the affinity pointer.
//        _mm512_mask_i32scatter_ps(&pnt_affinity[0], mask, C_vec, affinity_vec, 4);
        cout<<"First Mask: "<<(unsigned)mask<< " Second Mask: "<<(unsigned)(mask/2);
        _mm512_mask_i32scatter_pd(&pnt_affinity[0], mask, _mm512_extracti32x8_epi32(C_vec, 0), _mm512_cvt_roundps_pd(_mm512_extractf32x8_ps(affinity_vec, 0), _MM_FROUND_NO_EXC), 8);
        _mm512_mask_i32scatter_pd(&pnt_affinity[0], mask>>8, _mm512_extracti32x8_epi32(C_vec, 1), _mm512_cvt_roundps_pd(_mm512_extractf32x8_ps(affinity_vec, 0), _MM_FROUND_NO_EXC), 8);
      }

      if (vertex_count == 0 || vertex_count < 16) {
        for (index i = 0; i < vertex_count; ++i) {
          node v = ignorance_vertex[i];
          if (u != v) {
            index C = zeta[v];
            if (pnt_affinity[C] == -1) {
              // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
              pnt_affinity[C] = 0;
              pnt_neigh_comm[neigh_counter++] = C;
            }
            pnt_affinity[C] += defaultEdgeWeight;
          }
        }
        break;
      } else {
        for (index i = ((vertex_count/16)*16); i < vertex_count; ++i) {
          node v = ignorance_vertex[i];
          if (u != v) {
            index C = zeta[v];
            if (pnt_affinity[C] == -1) {
              // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
              pnt_affinity[C] = 0;
              pnt_neigh_comm[neigh_counter++] = C;
            }
            pnt_affinity[C] += defaultEdgeWeight;
          }
        }
        neighbor_processed = ((vertex_count/16)*16);
        pnt_outEdges = &ignorance_vertex[0];
        vertex_count = 0;
      }
      terminate++;
      if(terminate>=_deg){
        cout<<"Infinite Loop Occurred"<<endl;
        break;
      }
    }
    pnt_outEdges = &outEdges[0];
    for (index i= index_of_remaining_vertex; i < _deg; ++i) {
      node v = pnt_outEdges[i];
      if (u != v) {
        index C = zeta[v];
        if (pnt_affinity[C] == -1) {
          // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
          pnt_affinity[C] = 0;
          pnt_neigh_comm[neigh_counter++] = C;
        }
        pnt_affinity[C] += defaultEdgeWeight;
      }
    }

  cout<<endl<<"Community vs Affinity: ";
  for(index com=0; com<neigh_counter; ++com){
    cout<<" Comm: "<<com<<" Affinity: "<<pnt_affinity[com];
  }
  cout<<endl;

  /******/
  cout<<endl;
  return 0;

}
