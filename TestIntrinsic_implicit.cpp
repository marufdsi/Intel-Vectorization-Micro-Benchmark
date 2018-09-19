#include <stdint.h>
#include <omp.h>


typedef int32_t index, sint, node, count;
typedef float edgeweight;

void implicitely_vector(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg, int iteration) {

#pragma omp parallel 
  {
    edgeweight* real_affinity = pnt_affinity+_deg * omp_get_thread_num();

#pragma omp for schedule(guided)
    for(int k=0; k<iteration; ++k){
#pragma omp simd
#pragma unroll (4)
      for(index edge=0; edge<_deg; ++edge){
	real_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
      }
    }
  }
}
