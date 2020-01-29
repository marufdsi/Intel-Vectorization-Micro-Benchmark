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
implVecLoadGatherScatter(std::vector<node> pnt_outEdges, std::vector<edgeweight> pnt_outEdgeWeight, std::vector<node> zeta, std::vector<std::vector<edgeweight> > pnt_affinity, int _deg, int iteration) {
#pragma omp parallel
    {
        index tid = omp_get_thread_num();
#pragma omp for
        for (int k = 0; k < iteration; ++k) {
#pragma omp simd
            for (index edge = 0; edge < _deg; ++edge) {
                auto oe = pnt_outEdges[edge];
                auto z = zeta[oe];
                pnt_affinity[tid][z] += pnt_outEdgeWeight[edge];
            }
        }
    }
}
