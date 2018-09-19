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
using namespace std;

int main(){
		int pnt_outEdges[16], zeta[16];
		int u=0;
		float pnt_affinity[16];
		for(int i=0; i<16; ++i){
			pnt_outEdges[i] = i;
		}
		const   __m512i check_self_loop = _mm512_set1_epi32(u);
		/// Calculate affinity. 512 register, so it can load 16, 32 bit integer or floating point.
        	/// 512 bit double register initialize by all 0.0
	        const   __m512d db_set0 = _mm512_set1_pd(0.0);
	        /// 512 bit floating register initialize by all 0.0
        	const   __m512 fl_set0 = _mm512_set1_ps(0.0);
	        /// 512 bit floating register initialize by all -1.0
        	const   __m512 fl_set1 = _mm512_set1_ps(-1.0);
	        /// 512 bit integer register initialize by all 0
       		const   __m512i set0 = _mm512_set1_epi32(0x00000000);
	        /// 512 bit integer register initialize by all -1
        	const   __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);
	        /// 512 bit integer register initialize by all 1
        	const   __m512i set_plus_1 = _mm512_set1_epi32(1);
		__m512 default_edge_weight = _mm512_set1_ps(1.0);
	        const   __m512 total_vec = _mm512_set1_ps(total);

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
                _mm512_mask_storeu_epi32(&pnt_neigh_comm[neigh_counter], _mm512_kand(mask, new_comm_mask), distinct_comm);
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

	return 0;
}
