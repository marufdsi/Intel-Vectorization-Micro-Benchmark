#include <stdint.h>
#include <omp.h>

#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>


typedef int32_t index, sint, node, count;
typedef float edgeweight;

void explicitely_vectorizedload(  __restrict__  node *pnt_outEdges, __restrict__ node *outEdges, __restrict__ node *zeta, __restrict__ edgeweight *pnt_affinity, int _deg, int iteration) {
  
  const __m512 fl_set1 = _mm512_set1_ps(-1.0); 
  
#pragma omp parallel 
  {
    __restrict__ edgeweight* real_affinity = pnt_affinity+_deg * omp_get_thread_num();

#pragma omp  for schedule(guided)	
    for(int k=0; k<iteration; ++k){
     node* fake_pnt_outedge = pnt_outEdges;
     auto fake_deg = _deg;
     while ((((size_t)fake_pnt_outedge) % 64) != 0 && fake_deg != 0) {
       real_affinity[zeta[*fake_pnt_outedge]] = -1.0;
       fake_pnt_outedge ++;
       fake_deg --;
     }
     //now fake_pnt_outedge is aligned!
    
     index fake_neighbor_processed = (fake_deg/64)*64;

     for(index i=0; i<fake_neighbor_processed; i+=64){
       __m512i v_vec = _mm512_load_si512((__m512i *) &fake_pnt_outedge[i]);
       __m512i v_vec2 = _mm512_load_si512((__m512i *) &fake_pnt_outedge[i]+16);
       __m512i v_vec3 = _mm512_load_si512((__m512i *) &fake_pnt_outedge[i]+32);
       __m512i v_vec4 = _mm512_load_si512((__m512i *) &fake_pnt_outedge[i]+48);

       /// Gather community of the neighbor vertices.
       __m512i C_vec = _mm512_i32gather_epi32(v_vec, zeta, 4);
       __m512i C_vec2 = _mm512_i32gather_epi32(v_vec2, zeta, 4);
       __m512i C_vec3 = _mm512_i32gather_epi32(v_vec3, zeta, 4);
       __m512i C_vec4 = _mm512_i32gather_epi32(v_vec4, zeta, 4);
       /// Scatter affinity value to the affinity pointer.
       _mm512_i32scatter_ps(real_affinity, C_vec, fl_set1, 4);
       _mm512_i32scatter_ps(real_affinity, C_vec2, fl_set1, 4);
       _mm512_i32scatter_ps(real_affinity, C_vec3, fl_set1, 4);
       _mm512_i32scatter_ps(real_affinity, C_vec4, fl_set1, 4);
     }
     
     //	    #pragma omp simd
     for(index edge=fake_neighbor_processed; edge<fake_deg; ++edge){
       real_affinity[zeta[fake_pnt_outedge[edge]]] = -1.0;
     }
    }
  }
}
