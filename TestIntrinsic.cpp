#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>
#include <math.h> 
#include <sstream>
#include <fstream>
using namespace std;


void testVector(int _deg, int iteration) {
    typedef int32_t index, sint, node, count;
    typedef float edgeweight;

    int z = 40;
    int node_sort_by_deg[z];
    int outDegree[z];

    int value[16];
    for(int i=0; i<16; ++i){
	value[i] = i;
    }
    const   __m512i set00 = _mm512_set1_epi32(0x00000000);
    __m512i C_vec = _mm512_loadu_si512((__m512i *) &value[0]);
    __mmask16 mask_c = (unsigned)21;
    __m512i compress = _mm512_mask_compress_epi32(set00, mask_c, C_vec);
    __mmask16 comm_mask = pow(2,_mm_popcnt_u32((unsigned) mask_c)) - 1;
   int count_m = _mm_popcnt_u32((unsigned) comm_mask);
   int * val_c = (int *)&compress;
   for(int i=0; i<16; ++i){
        cout<<val_c[i]<<" ";
    }
   cout<<endl<<"pop count: "<<count_m<< "  comm_mask: "<< comm_mask << " mask_c: "<<mask_c<<endl;

    string init_log_file = "init_log_file.csv";
    std::ofstream f_init_log;
    std::ifstream infile(init_log_file);
    bool existing_file = infile.good();
    f_init_log.open(init_log_file, std::ios_base::out | std::ios_base::app | std::ios_base::ate);
    if (!existing_file) {
        f_init_log << "Degree" << "," << "Iteration" << "," << "Implicit TIme" << "," << "Intrinsic Time" << std::endl;
    }
    /******/
    index u = 0;
    count neigh_counter = 0;
    count vertex_count = 0;
    node *pnt_outEdges, *outEdges, *zeta;
    vector <index> neigh_comm(_deg);
    index *pnt_neigh_comm;
    node *ignorance_vertex;
    edgeweight *pnt_affinity;
    edgeweight *pnt_outEdgeWeight;
    edgeweight *ignorance_edge_weight;
    ignorance_vertex = (node *) malloc(sizeof(node) * _deg);
    pnt_affinity = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    pnt_outEdgeWeight = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    ignorance_edge_weight = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    outEdges = (node *) malloc(sizeof(node) * _deg);
    edgeweight f_defaultEdgeWeight = 1.0;
    zeta = (node *) malloc(sizeof(node) * _deg);
    bool isGraphWeighted = false;

#pragma omp simd
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
        zeta[edge] = edge % 10;
//        zeta[edge] = 1;
        pnt_outEdgeWeight[edge] = 1.0 * (edge + 1);
    }
    pnt_neigh_comm = &neigh_comm[0];
    pnt_outEdges = &outEdges[0];

   // 512 bit floating register initialize by all -1.0
    const __m512 fl_set1 = _mm512_set1_ps(-1.0);  
    index neighbor_processed = (_deg/16)*16;
    struct timespec start_ini, end_ini;
    clock_gettime(CLOCK_MONOTONIC, &start_ini);
	for(int k=0; k<iteration; ++k){
	    #pragma omp simd
            for(index edge=0; edge<_deg; ++edge){
                pnt_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
            }
	}
    clock_gettime(CLOCK_MONOTONIC, &end_ini);
    double elapsed_ini_time = ((end_ini.tv_sec * 1000 + (end_ini.tv_nsec / 1.0e6)) - (start_ini.tv_sec * 1000 + (start_ini.tv_nsec / 1.0e6)));
    cout<<"Existing Init Time: "<<elapsed_ini_time<<endl;

    struct timespec start_init, end_init;    
    clock_gettime(CLOCK_MONOTONIC, &start_init);	
	for(int	k=0; k<iteration;	++k){
		#pragma unroll
            for(index i=0; i<neighbor_processed; i+=16){
                __m512i v_vec = _mm512_loadu_si512((__m512i *) &pnt_outEdges[i]);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
                /// Scatter affinity value to the affinity pointer.
                _mm512_i32scatter_ps(&pnt_affinity[0], C_vec, fl_set1, 4);
            }
//	    #pragma omp simd
            for(index edge=neighbor_processed; edge<_deg; ++edge){
                pnt_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
            }
	}
    clock_gettime(CLOCK_MONOTONIC, &end_init);
    double elapsed_init_time = ((end_init.tv_sec * 1000 + (end_init.tv_nsec / 1.0e6)) - (start_init.tv_sec * 1000 + (start_init.tv_nsec / 1.0e6)));
    cout<<"Vectorized Init Time: "<<elapsed_init_time<<endl;
    f_init_log<<_deg<<","<<iteration<<","<< elapsed_ini_time<<","<<elapsed_init_time<<endl;




#pragma omp simd
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
//        zeta[edge] = edge % 5;
	zeta[edge] = 1;
        pnt_outEdgeWeight[edge] = 1.0 * (edge + 1);
    }
    pnt_neigh_comm = &neigh_comm[0];
    pnt_outEdges = &outEdges[0];
    edgeweight defaultEdgeWeight = 1.0;
#pragma omp simd
    for (index edge = 0; edge < _deg; ++edge) {
        pnt_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
    }
    cout << "Edges: ";
    for (index edge = 0; edge < _deg; ++edge) {
     //   cout << pnt_outEdges[edge] << " ";
    }
    cout << endl << "Community: ";
    for (index edge = 0; edge < _deg; ++edge) {
       // cout << zeta[pnt_outEdges[edge]] << " ";
    }
    pnt_affinity[zeta[u]] = 0.0;
    cout << endl << "affinity: ";
    for (index edge = 0; edge < _deg; ++edge) {
   //     cout << zeta[pnt_outEdges[edge]] << " = " << pnt_affinity[zeta[pnt_outEdges[edge]]] << " ";
    }
    cout << endl;



//  index neighbor_processing = (_deg/16)*16;
    index neighbor_processing = _deg;
    index index_of_remaining_vertex = neighbor_processing;
    // Calculate affinity. 512 register, so it can load 16, 32 bit integer or floating point.
    // 512 bit floating register initialize by all 0.0
    const __m512 fl_set0 = _mm512_set1_ps(0.0);
    // 512 bit floating register initialize by all -1.0
//    const __m512 fl_set1 = _mm512_set1_ps(-1.0);
    // 512 bit double register initialize by all 0.0
    const __m512d d_set0 = _mm512_set1_pd(0.0);
    // 512 bit double register initialize by all -1.0
    const __m512d d_set1 = _mm512_set1_pd(-1.0);
    // 512 bit integer register initialize by all 0
    const __m512i set0 = _mm512_set1_epi32(0x00000000);
    // 512 bit integer register initialize by all -1
    const __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);
    /// 512 bit integer register initialize by all 1
    const   __m512i set_plus_1 = _mm512_set1_epi32(1);

    const __m512 default_edge_weight = _mm512_set1_ps(defaultEdgeWeight);
    const __m512i check_self_loop = _mm512_set1_epi32(u);
    const __mmask16 max_delta_index_mask = (unsigned) 120;

    int max_delta_index = _bit_scan_forward(max_delta_index_mask);

    cout<<"max_delta_index: "<< max_delta_index <<endl;
    index terminate = 0;

	struct timespec start_move, end_move;
/*        clock_gettime(CLOCK_MONOTONIC, &start_move);
    
            #pragma unroll
            for (index i = 0; i < neighbor_processed; i += 16) {
		/// Load at most 16 neighbor vertices.
                __m512i v_vec = _mm512_loadu_si512((__m512i *) &pnt_outEdges[i]);
                /// Mask to find u != v
                __mmask16 self_loop_mask = _mm512_cmpneq_epi32_mask(check_self_loop, v_vec);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_mask_i32gather_epi32(set0, self_loop_mask, v_vec, &zeta[0], 4);
                sint vertex_cnt = _mm_popcnt_u32((unsigned)self_loop_mask);
                while(vertex_cnt>0){
                    /// It will find out the community that is not processed.
                    C_vec = _mm512_mask_compress_epi32(set0, self_loop_mask, C_vec);
		    //cout<<"self_loop_mask: "<<self_loop_mask<<endl;
                    __mmask16 comm_mask = pow(2, vertex_cnt) - 1;
                    index * comm_not_processed = (index *)&C_vec;
                    __m512i first_comm = _mm512_set1_epi32(comm_not_processed[0]);
                    const __mmask16 first_comm_mask = _mm512_mask_cmpeq_epi32_mask(comm_mask, first_comm, C_vec);
		    //cout<<"comm_mask: "<<comm_mask<<" first_comm_mask: "<<first_comm_mask<<" Affinity: "<< pnt_affinity[comm_not_processed[0]]<< " count: "<< _mm_popcnt_u32((unsigned)first_comm_mask) <<endl;
                    if(pnt_affinity[comm_not_processed[0]] == -1){
                        pnt_neigh_comm[neigh_counter++] = comm_not_processed[0];
                        pnt_affinity[comm_not_processed[0]] = 0;
                    }
                    pnt_affinity[comm_not_processed[0]] += f_defaultEdgeWeight * _mm_popcnt_u32((unsigned)first_comm_mask);
                    self_loop_mask  = _mm512_kandn(first_comm_mask, comm_mask);
                    vertex_cnt = _mm_popcnt_u32((unsigned) self_loop_mask);
                }
            }
	clock_gettime(CLOCK_MONOTONIC, &end_move);
        double elapsed_move_time = ((end_move.tv_sec * 1000 + (end_move.tv_nsec / 1.0e6)) - (start_move.tv_sec * 1000 + (start_move.tv_nsec / 1.0e6)));
	cout<<"Reduced VPLM Time: "<<elapsed_move_time<<endl;

	clock_gettime(CLOCK_MONOTONIC, &start_move);
	for (int i = 0; i < 16; ++i) {
                node v = pnt_outEdges[i];
                if (u != v) {
                    index C = zeta[v];
                    if (pnt_affinity[C] == -1) {
                        // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
                        pnt_affinity[C] = 0;
                        pnt_neigh_comm[neigh_counter++] = C;
                    }
                    pnt_affinity[C] += isGraphWeighted ? f_defaultEdgeWeight : f_defaultEdgeWeight;
                }
            }
	clock_gettime(CLOCK_MONOTONIC, &end_move);
        double elapsed_move_time = ((end_move.tv_sec * 1000 + (end_move.tv_nsec / 1.0e6)) - (start_move.tv_sec * 1000 + (start_move.tv_nsec / 1.0e6)));
        cout<<"PLM Time: "<<elapsed_move_time<<endl;
*/
	clock_gettime(CLOCK_MONOTONIC, &start_move);

	for (index i = 0; i < neighbor_processed; i += 16) {
//                __mmask16 mask_neighbor_exist = pow(2, ((neighbor_processed-i) >= 16 ? 16 : (neighbor_processed - i))) - 1;
                /// Load at most 16 neighbor vertices.
                __m512i v_vec = _mm512_loadu_si512((__m512i *) &pnt_outEdges[i]);
                /// Mask to find u != v
                const __mmask16 self_loop_mask = _mm512_cmpneq_epi32_mask(check_self_loop, v_vec);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_mask_i32gather_epi32(set0, self_loop_mask, v_vec, &zeta[0], 4);
                /// Gather affinity of the corresponding community.
                __m512 affinity_vec = _mm512_mask_i32gather_ps(fl_set0, self_loop_mask, C_vec, &pnt_affinity[0], 4);

                /// Mask to find out the new community that contains -1.0 value
                const __mmask16 new_comm_mask = _mm512_kand(_mm512_cmpeq_ps_mask(fl_set1, affinity_vec), self_loop_mask);
                /// Detect conflict of the community
                __m512i C_conflict = _mm512_mask_conflict_epi32(set_plus_1, self_loop_mask, C_vec);
                /// Calculate mask using NAND of C_conflict and set1
                const __mmask16 mask = _mm512_kand(_mm512_testn_epi32_mask(C_conflict, set1), self_loop_mask);

                /// Now we need to collect the distinct neighbor community and vertices that didn't process yet.
                __m512i distinct_comm;
                /// It will find out the distinct community.
                distinct_comm = _mm512_mask_compress_epi32(set0, _mm512_kand(mask, new_comm_mask), C_vec);
                /// Count the set bit from the mask for neighbor community
                sint neigh_cnt = _mm_popcnt_u32((unsigned) _mm512_kand(mask, new_comm_mask));
                /// Store distinct neighbor community
//                _mm512_mask_storeu_epi32(&pnt_neigh_comm[neigh_counter], _mm512_kand(mask, new_comm_mask), distinct_comm);
                _mm512_storeu_si512(&pnt_neigh_comm[neigh_counter], distinct_comm);
                /// Increment neighbor community count
                neigh_counter += neigh_cnt;

                /// Assign 0.0 in the affinity that contains -1.0 right now.
                affinity_vec = _mm512_mask_mov_ps(affinity_vec, new_comm_mask, fl_set0);
                /// Add edge weight to the affinity and if mask doesn't set load from affinity
                affinity_vec = _mm512_mask_add_ps(affinity_vec, mask, affinity_vec, default_edge_weight);
                /// Scatter affinity value to the affinity pointer.
                _mm512_mask_i32scatter_ps(&pnt_affinity[0], mask, C_vec, affinity_vec, 4);


                /// Count the set bit from the mask for ignore vertices
                __mmask16 conflict_comm_mask = _mm512_kand(_mm512_knot(mask), self_loop_mask);
                sint vertex_cnt = _mm_popcnt_u32((unsigned)conflict_comm_mask);
                while(vertex_cnt>0){
                    /// It will find out the community that is not processed.
                    C_vec = _mm512_mask_compress_epi32(set0, conflict_comm_mask, C_vec);
                    __mmask16 comm_mask = pow(2, vertex_cnt) - 1;
                    index * comm_not_processed = (index *)&C_vec;
                    __m512i first_comm = _mm512_set1_epi32(comm_not_processed[0]);
                    const __mmask16 first_comm_mask = _mm512_mask_cmpeq_epi32_mask(comm_mask, first_comm, C_vec);
                    pnt_affinity[comm_not_processed[0]] += f_defaultEdgeWeight * _mm_popcnt_u32((unsigned)first_comm_mask);
                    conflict_comm_mask  = _mm512_kandn(first_comm_mask, comm_mask);
                    vertex_cnt = _mm_popcnt_u32((unsigned) conflict_comm_mask);
                }
            }

	clock_gettime(CLOCK_MONOTONIC, &end_move);
        double elapsed_move_time = ((end_move.tv_sec * 1000 + (end_move.tv_nsec / 1.0e6)) - (start_move.tv_sec * 1000 + (start_move.tv_nsec / 1.0e6)));
        cout<<"VPLM Time: "<<elapsed_move_time<<endl;

	for (index edge = 0; edge < neighbor_processed; ++edge) {
        //	cout << zeta[pnt_outEdges[edge]] << " = " << pnt_affinity[zeta[pnt_outEdges[edge]]] << " ";
    	}
	cout<<endl<<"Community: ";
	for(index i=0; i<neigh_counter; ++i){
	//	cout<< pnt_neigh_comm[i]<< " ";
	}
	cout<<endl;
}
int main(){
    int iteration = 100;
    for(int k=0; k<5; ++k){
        for(int i=0; i<50; ++i){
            testVector((i*30) + 20, iteration);
        }
        iteration *=10;
    }
    return 0;
}
