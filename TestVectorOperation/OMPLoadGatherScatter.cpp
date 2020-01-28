//
// Created by maruf on 1/28/20.
//

#include <stdint.h>
#include <omp.h>

#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>


typedef int32_t index, sint, node, count;
typedef float edgeweight;

void
OMPLoadGatherScatter(node *pnt_outEdges, edgeweight *pnt_outEdgeWeight, node *zeta, edgeweight *pnt_affinity, int _deg,
                     int iteration) {
#pragma omp parallel
    {
        edgeweight *real_affinity = pnt_affinity + _deg * omp_get_thread_num();

#pragma omp for schedule(guided)
        for (int k = 0; k < iteration; ++k) {
#pragma novector
            for (index edge = 0; edge < _deg; ++edge) {
                auto oe = pnt_outEdges[edge];
                auto z = zeta[oe];
                real_affinity[z] += pnt_outEdgeWeight[edge];
            }
        }
    }
}