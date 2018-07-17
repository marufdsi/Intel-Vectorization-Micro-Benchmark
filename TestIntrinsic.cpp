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
  typedef float edgeweight;

  int z = 40;
  int node_sort_by_deg[z];
  int outDegree[z];
  int aa[100];
  float f_a[100];
  for(int i=0; i<100; i++){
    aa[i] = i + (i%4);
    if(i%2 == 0)
      f_a[i] = -1.0;
    else
      f_a[i] = 0.0;
  }

  /******/
  index _deg = 20, u=0;
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
  cout<<endl<<"affinity: ";
  for(index edge=0; edge<_deg; ++edge){
    cout<<zeta[pnt_outEdges[edge]]<<" = "<<pnt_affinity[zeta[pnt_outEdges[edge]]]<<" ";
  }
  cout<<endl;

  pnt_affinity[zeta[u]] = 0.0;
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
    index terminate = 0;
    while (1) {
      vertex_count = 0;
      for (index i = 0; i < neighbor_processed; i += 16) {
        // Load at most 16 neighbor vertices.
        __m512i v_vec = _mm512_loadu_si512((__m512i *) &pnt_outEdges[i]);
        // Gather community of the neighbor vertices.
        __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
        // Gather affinity of the corresponding community.
        __m512 affinity_vec = _mm512_i32gather_ps(C_vec, &pnt_affinity[0], 4);
        // Mask to find out the new community that contains -1.0 value
        const __mmask16 new_comm_mask = _mm512_cmpeq_ps_mask(fl_set1, affinity_vec);
        // Detect conflict of the community
        __m512i C_conflict = _mm512_conflict_epi32(C_vec);
        // Calculate mask using NAND of C_conflict and set1
        const __mmask16 mask = _mm512_testn_epi32_mask(C_conflict, set1);

        cout<<"New Comm Mask: "<<(unsigned)new_comm_mask<<" mask: "<<(unsigned)mask<<endl;
        // Now we need to collect the distinct neighbor community and vertices that didn't process yet.
        __m512i distinct_comm, v_not_processed;
        __m512 w_not_processed;
        // It will find out the distinct community but we don't know the length.
        distinct_comm = _mm512_mask_compress_epi32(set0, _mm512_kand(mask, new_comm_mask), C_vec);
        // It will calculate the ignorance vertices in the previous calculation, but we don't know the length.
        v_not_processed = _mm512_mask_compress_epi32(set0, ~mask, v_vec);
        // Count the set bit from the mask for neighbor community
        sint neigh_cnt = _mm_popcnt_u32((unsigned) _mm512_kand(mask, new_comm_mask));
        // Count the set bit from the mask for ignore vertices
        sint vertex_cnt = _mm_popcnt_u32((unsigned) (~mask));
        // Store distinct neighbor community
        _mm512_storeu_si512(&pnt_neigh_comm[neigh_counter], distinct_comm);
        // Store ignore vertices
        _mm512_storeu_si512(&ignorance_vertex[vertex_count], v_not_processed);
        // Increment neighbor community count
        neigh_counter += neigh_cnt;
        // Increment ignore vertices count
        vertex_count += vertex_cnt;

        // Assign 0.0 in the affinity that contains -1.0 right now.
        _mm512_mask_i32scatter_ps(pnt_affinity, new_comm_mask, C_vec, fl_set0, 4);
        // Add edge weight to the affinity and if mask doesn't set load from affinity
        affinity_vec = _mm512_mask_add_ps(affinity_vec, mask, affinity_vec, default_edge_weight);
        // Scatter affinity value to the affinity pointer.
        _mm512_i32scatter_ps(pnt_affinity, C_vec, affinity_vec, 4);
      }

      cout<<"Ignore Vertices: ";
      for(index edge=0; edge<vertex_count; ++edge){
        cout<<ignorance_vertex[edge]<<" ";
      }
      cout<<endl<<"Neighbor Collected: ";
      for(index edge=0; edge<neigh_counter; ++edge){
        cout<<pnt_neigh_comm[edge]<<" ";
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

  cout<<endl<<"Distinct Neighbor Community: ";
  for(index edge=0; edge<neigh_counter; ++edge){
    cout<<pnt_neigh_comm[edge]<<" ";
  }
  cout<<endl;

  /******/


/*
  cout<<"f_a:";
  for(int i=0; i<100; i++){
    cout<<f_a[i]<<" ";
  }
  cout<<endl;
  const   __m512 fl_set1 = _mm512_set1_ps(-1.0);
  const __mmask16 new_comm = _mm512_cmpeq_ps_mask(fl_set1, _mm512_load_ps((__m512 *)&f_a[0]));
  cout<<" community mask:"<<((unsigned)new_comm)<<endl;
  __m512i r_a = _mm512_loadu_si512((__m512i *)&aa[0]);
  //      __m256i r_a = _mm256_load_si256((__m256i *)&node_sort_by_deg[0]);                                                                                                                                          
  __m512i cd = _mm512_conflict_epi32(r_a);
  const   __m512i set0 = _mm512_set1_epi32(0x00000000);
  const   __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);
  // Calculate mask using NAND of C_conflict and set1                                                                                                                                                        
  const __mmask16 mask = _mm512_testn_epi32_mask(cd, set1);
  int * val_mask = (int*) &mask;
  __m512i distinct_comm, v_not_processed;
  distinct_comm = _mm512_mask_compress_epi32(set0, mask, r_a);
  __m512i lz = _mm512_maskz_lzcnt_epi32(mask, r_a);
  //unsigned msk  = _mm512_movemask_ps(_mm512_castsi512_ps(lz));                                                                                                                                             
  int cnt = _mm_popcnt_u32((unsigned)mask);
  //__m512i pop = _mm512_popcnt_epi32(cd);                                                                                                                                                                   
  int * val_cd = (int*) &cd;
  int * val_lz = (int*) &lz;
  int * val_comm = (int*) &distinct_comm;
  //int * val_pop = (int*) &pop;                                                                                                                                                                             
  cout<<"array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< aa[i] << " ";
  }
  cout<<endl<<"conflict array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_cd[i]<<" ";
  }
  cout<<endl<<"count: "<<cnt<<" mask:"<<((unsigned)mask)<<" _mm_countbits_32:"<<_mm_countbits_32(10);
  cout<<endl<<"mask array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_mask[i]<<" ";
  }
  cout<<endl<<"compress array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_comm[i]<<" ";
  }
  cout<<endl<<"zero count array: "<<endl;
  for(int i=0; i<16; i++){
    cout << val_lz[i]<<" ";
  }*/
  /*cout<<endl<<"pop count: "<<endl;                                                                                                                                                                         
        for(int i=0; i<10; i++){                                                                                                                                                                                   
	cout<<val_pop[i]<<" ";                                                                                                                                                                                   
	}*/
  cout<<endl;
  return 0;

}
