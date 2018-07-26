#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>

using namespace std;


int main() {
    typedef int32_t index, sint, node, count;
    typedef double edgeweight;

    int z = 40;
    int node_sort_by_deg[z];
    int outDegree[z];


    /******/
    index _deg = 20, u = 0;
    count neigh_counter = 0;
    count vertex_count = 0;
    node *pnt_outEdges, *outEdges, *zeta;
    vector <index> neigh_comm(_deg);
    index *pnt_neigh_comm;
    node *ignorance_vertex;
    edgeweight *pnt_affinity;
    edgeweight *pnt_outEdgeWeight;
    edgeweight *ignorance_edge_weight;
    ignorance_vertex = (node *) malloc(sizeof(node) * _deg);
    pnt_affinity = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    pnt_outEdgeWeight = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    ignorance_edge_weight = (edgeweight *) malloc(sizeof(edgeweight) * _deg);
    outEdges = (node *) malloc(sizeof(node) * _deg);
    zeta = (node *) malloc(sizeof(node) * _deg);
#pragma omp simd
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
        zeta[edge] = edge % 5;
        pnt_outEdgeWeight[edge] = 1.0 * (edge + 1);
    }
    pnt_neigh_comm = &neigh_comm[0];
    pnt_outEdges = &outEdges[0];
    edgeweight defaultEdgeWeight = 1.0;
#pragma omp simd
    for (index edge = 0; edge < _deg; ++edge) {
        pnt_affinity[zeta[pnt_outEdges[edge]]] = -1.0;
    }
    cout << "Edges: ";
    for (index edge = 0; edge < _deg; ++edge) {
        cout << pnt_outEdges[edge] << " ";
    }
    cout << endl << "Community: ";
    for (index edge = 0; edge < _deg; ++edge) {
        cout << zeta[pnt_outEdges[edge]] << " ";
    }
    pnt_affinity[zeta[u]] = 0.0;
    cout << endl << "affinity: ";
    for (index edge = 0; edge < _deg; ++edge) {
        cout << zeta[pnt_outEdges[edge]] << " = " << pnt_affinity[zeta[pnt_outEdges[edge]]] << " ";
    }
    cout << endl;



//  index neighbor_processing = (_deg/16)*16;
    index neighbor_processing = _deg;
    index index_of_remaining_vertex = neighbor_processing;
    // Calculate affinity. 512 register, so it can load 16, 32 bit integer or floating point.
    // 512 bit floating register initialize by all 0.0
    const __m512 fl_set0 = _mm512_set1_ps(0.0);
    // 512 bit floating register initialize by all -1.0
    const __m512 fl_set1 = _mm512_set1_ps(-1.0);
    // 512 bit double register initialize by all 0.0
    const __m512d d_set0 = _mm512_set1_pd(0.0);
    // 512 bit double register initialize by all -1.0
    const __m512d d_set1 = _mm512_set1_pd(-1.0);
    // 512 bit integer register initialize by all 0
    const __m512i set0 = _mm512_set1_epi32(0x00000000);
    // 512 bit integer register initialize by all -1
    const __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);

    const __m512 default_edge_weight = _mm512_set1_ps(defaultEdgeWeight);
    const __m512i check_self_loop = _mm512_set1_epi32(u);
    const __mmask16 max_delta_index_mask = (unsigned) 120;

    int max_delta_index = _bit_scan_forward(max_delta_index_mask);

    cout<<"max_delta_index: "<< max_delta_index <<endl;
    index terminate = 0;



    return 0;

}
