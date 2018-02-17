#include<iostream>
#include<vector>
#include <omp.h>
#include <cmath>
using namespace std;



/*#pragma omp declare simd uniform(a), linear(i:1), simdlen(4)
#pragma omp declare simd uniform(a), simdlen(4)
void foo(int *a, int i){
  std::cout<<a[i]<<"\n";
}*/
int main(){
    typedef int32_t index;
    typedef int32_t node;
    typedef int32_t count;
    typedef double edgeweight;
    index test_value = 0;
    index _mask = -1;
    index _signBit = (test_value==0);
    //index _signBit = ((unsigned index)test_value) >> (sizeof(index)-1);
    cout<<_signBit<<endl;
    vector<edgeweight> testWeight;
    count _edge = 0;
    count counter = 1;

    for (int k = 0; k < 3; ++k) {
        testWeight.resize(3*10);
        _edge = k-3;
        for (int j = 0; j < 10; ++j) {
            _edge += 3;
            testWeight[_edge] = counter++;
        }
    }

    testWeight.resize(65);
    for (int k = 0; k < 3; ++k) {
        _edge = k-3;
        for (int j = 0; j < 10; ++j) {
            _edge += 3;
            std::cout<<testWeight[_edge] <<" ";
        }
        std:cout<<endl;
    }
    std::cout<<"size of vector: "<<testWeight.size()<<std::endl;
    /*count z=100;
    count zeta[z];
    index _deg[16];
    count block_size = 16;
    index neighbor_count[block_size] __attribute__((aligned(32)));
    node nodes[block_size] __attribute__((aligned(32)));
    node temp_outEdges[block_size][z];
    edgeweight affinity_pointer[block_size][z] __attribute__((aligned(32)));
    index neighbor_community[block_size][z] __attribute__((aligned(32)));
    edgeweight temp_outEdgeWeight[block_size][z];
    node u=4;
    std::vector<edgeweight> affinity(z);
    std::vector<node> neighbor_comm(z);
    count counter=0;


    for (node counter = 0; counter < block_size; ++counter) {
        #pragma omp simd
        for (index _edge = 0; _edge < _deg[counter]; ++_edge) {
            node v = temp_outEdges[counter][_edge];
            index C = zeta[v];
            // found the neighbor for the first time, initialize to 0 and add to list of neighboring communities
            affinity_pointer[counter][C] = 0;
            neighbor_community[counter][neighbor_count[counter]] = C;
            neighbor_count[counter] += 1;
            affinity_pointer[counter][C] += temp_outEdgeWeight[counter][_edge];
        }
    }*/

  return 0;
}
