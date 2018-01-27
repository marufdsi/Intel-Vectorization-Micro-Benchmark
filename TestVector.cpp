#include<iostream>
#include<vector>
#include <omp.h>
using namespace std;



#pragma omp declare simd uniform(a), linear(i:1), simdlen(4)
#pragma omp declare simd uniform(a), simdlen(4)
void foo(int *a, int i){
  std::cout<<a[i]<<"\n";
}
int main(){
    typedef int32_t index;
    typedef int32_t node;
    typedef int32_t count;
    typedef double edgeweight;
    count z=100;
    count zeta[z];
    index min_deg = 100;
    count block_size = 16;
    index neighbor_count[block_size] __attribute__((aligned(32)));
    node nodes[block_size] __attribute__((aligned(32)));
    const node* temp_outEdges[block_size] __attribute__((aligned(32)));
    std::vector<edgeweight> *affinity_pointer __attribute__((aligned(32)));
    index* neighbor_community[block_size] __attribute__((aligned(32)));
    const edgeweight * temp_outEdgeWeight[block_size] __attribute__((aligned(32)));
    #pragma omp simd collapse(2) safelen(4)
    for (index ithEdge = 0; ithEdge < min_deg; ++ithEdge) {
        #pragma omp simd safelen(4)
        for (index counter = 0; counter < block_size; ++counter) {
            node v = temp_outEdges[counter][ithEdge];
            index C = zeta[v];
            edgeweight* affinity_u = &affinity_pointer[counter][C];
            if (nodes[counter] != v) {
                if (*affinity_u == -1) {
                    // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
                    *affinity_u = 0;
                    neighbor_community[counter][neighbor_count[counter]] = C;
                    neighbor_count[counter] += 1;
                }
//                *affinity_u += temp_outEdgeWeight[counter][ithEdge];
            }
        }
    }

  return 0;
}
