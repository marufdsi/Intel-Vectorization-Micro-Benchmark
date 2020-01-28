#include <stdint.h>
#include <omp.h>

#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>


typedef int32_t index, sint, node, count;
typedef float edgeweight;

void explicitely_vectorizedloadgatheraddstore(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity,
                                              int _deg, int iteration) {

    const __m512 fl_set1 = _mm512_set1_ps(-1.0);

#pragma omp parallel
    {
        edgeweight *real_affinity = pnt_affinity + _deg * omp_get_thread_num();
        __m512i summing = _mm512_set1_epi32(0);

#pragma omp  for schedule(guided)
        for (int k = 0; k < iteration; ++k) {
            node *fake_pnt_outedge = pnt_outEdges;
            auto fake_deg = _deg;
            while ((((size_t) fake_pnt_outedge) % 64) != 0 && fake_deg != 0) {
                *real_affinity += zeta[*fake_pnt_outedge];
                fake_pnt_outedge++;
                fake_deg--;
            }
            //now fake_pnt_outedge is aligned!

            index fake_neighbor_processed = (fake_deg / 16) * 16;

#pragma unroll (2)
            for (index i = 0; i < fake_neighbor_processed; i += 16) {
                __m512i v_vec = _mm512_load_si512((__m512i * ) & fake_pnt_outedge[i]);
                /// Gather community of the neighbor vertices.
                __m512i C_vec = _mm512_i32gather_epi32(v_vec, &zeta[0], 4);
                summing = _mm512_add_epi32(C_vec, summing);
                _mm512_store_epi32(real_affinity, summing);
            }


            //	    #pragma omp simd
            for (index edge = fake_neighbor_processed; edge < fake_deg; ++edge) {
                *real_affinity += zeta[fake_pnt_outedge[edge]];
            }
        }
    }
}
