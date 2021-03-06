//
// Created by maruf on 1/28/20.
//

#include <stdint.h>
#include <omp.h>
#include <iostream>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>
#include <vector>

typedef int32_t index, sint, node, count;
typedef float edgeweight;

void
vecLoadGatherScatter(std::vector<node> pnt_outEdges, std::vector<edgeweight> pnt_outEdgeWeight, std::vector<node> zeta, std::vector<std::vector<edgeweight> > pnt_affinity, int _deg, int iteration) {
#pragma omp parallel
    {
        index tid = omp_get_thread_num();
#pragma omp for schedule(guided)
        for (int k = 0; k < iteration; ++k) {
//#pragma unroll (4)
            for (index i = 0; i < _deg; i += 16) {
                /// Load Neighbors
                __m512i v_vec = _mm512_loadu_si512((__m512i * ) & pnt_outEdges[i]);
                /// Load at most 16 neighbor vertex edge weight.
                __m512 w_vec = _mm512_loadu_ps((__m512 * ) & pnt_outEdgeWeight[i]);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
                /// Gather affinity of the corresponding community.
                __m512 affinity_vec = _mm512_i32gather_ps(C_vec, &pnt_affinity[tid][0], 4);
                /// Add edge weight to the affinity and if mask doesn't set load from affinity
                affinity_vec = _mm512_add_ps(affinity_vec, w_vec);
                /// Scatter affinity value to the affinity pointer.
                _mm512_i32scatter_ps(&pnt_affinity[tid][0], C_vec, affinity_vec, 4);
            }
        }
    }
}
