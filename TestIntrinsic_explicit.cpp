#include <stdint.h>
#include <omp.h>

#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>


typedef int32_t index, sint, node, count;
typedef float edgeweight;

void explicitely_vectorized(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg,
                            int iteration) {
    index neighbor_processed = (_deg / 16) * 16;
    const __m512 fl_set1 = _mm512_set1_ps(-1.0);

#pragma omp parallel
    {
        edgeweight *real_affinity = pnt_affinity + _deg * omp_get_thread_num();

#pragma omp for schedule(guided)
        for (int k = 0; k < iteration; ++k) {
#pragma unroll (4)
            for (index i = 0; i < neighbor_processed; i += 16) {
                __m512i v_vec = _mm512_loadu_si512((__m512i * ) & pnt_outEdges[i]);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
                /// Scatter affinity value to the affinity pointer.
                _mm512_i32scatter_ps(&real_affinity[0], C_vec, fl_set1, 4);
            }
            //	    #pragma omp simd
            for (index edge = neighbor_processed; edge < _deg; ++edge) {
                real_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
            }
        }
    }
}
