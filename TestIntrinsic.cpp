#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>
#include <math.h>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <stdint.h>
// #include <likwid.h>

//  Windows
#ifdef _WIN32

#include <intrin.h>
uint64_t rdtsc(){
    return __rdtsc();
}
 
//  Linux/GCC
#else

uint64_t rdtsc() {
    unsigned int lo, hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t) hi << 32) | lo;
}

#endif

using namespace std;

string thread_num = "";
typedef int32_t index, sint, node, count;
typedef float edgeweight;

void explicitely_vectorized(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg,
                            int iteration);

void no_vector(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg, int iteration);

void
implicitely_vector(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg, int iteration);

void explicitely_vectorizedload(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg,
                                int iteration);

void
explicitely_vectorizedloadgatheradd(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity, int _deg,
                                    int iteration);

void explicitely_vectorizedloadgatheraddstore(node *pnt_outEdges, node *outEdges, node *zeta, edgeweight *pnt_affinity,
                                              int _deg, int iteration);


double ProcSpeedCalc() {
    uint64_t nCtr = 0;
    uint64_t nCtrStop = rdtsc();  // tick before
    nCtrStop += CLOCKS_PER_SEC;
    struct timespec start, end;
    clock_gettime(CLOCK_MONOTONIC, &start);
    uint64_t tick = rdtsc();
    do {
        nCtr = rdtsc();
    } while (nCtr < nCtrStop);
    // stop-start is speed in Hz divided by 1,000,000 is speed in MHz
    clock_gettime(CLOCK_MONOTONIC, &end);
    return CLOCKS_PER_SEC /
           ((end.tv_sec * 1000 + (end.tv_nsec / 1.0e6)) - (start.tv_sec * 1000 + (start.tv_nsec / 1.0e6))) * 1000;
}

void testClockSpeed(int _deg, int iteration) {

    std::cout << "deg: " << _deg << " iteration: " << iteration << std::endl;
    string init_log_file = "init_log_file_thread_" + thread_num + ".csv";
    std::ofstream f_init_log;
    std::ifstream infile(init_log_file);
    bool existing_file = infile.good();
    f_init_log.open(init_log_file, std::ios_base::out | std::ios_base::app | std::ios_base::ate);
    if (!existing_file) {
        f_init_log << "Degree" << "," << "Iteration" << "," << "Implicit Time" << "," << "No Vector Time" << ","
                   << "Intrinsic Time" << "," << "Intrinsic Load Time" << "," << "Intrinsic LG time" << "," << "Intrinsic LGA Time" << std::endl;
    }

    node *pnt_outEdges, *outEdges, *zeta;
    edgeweight *pnt_affinity;
    int NBTHREAD = 36; //who wrote this abomination?
    pnt_affinity = (edgeweight *) malloc(sizeof(edgeweight) * _deg * NBTHREAD);
    outEdges = (node *) malloc(sizeof(node) * _deg);
    zeta = (node *) malloc(sizeof(node) * _deg);
    index neighbor_processed = (_deg / 16) * 16;
    // 512 bit floating register initialize by all -1.0
    const __m512 fl_set1 = _mm512_set1_ps(-1.0);
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
        zeta[edge] = (edge % 16) * 16 + (edge % 16);
//        zeta[edge] = 1;
    }
    pnt_outEdges = &outEdges[0];
    float fr_implicit = 0.0, fr_no_vector = 0.0, fr_vector = 0.0;
    fr_implicit = ProcSpeedCalc();

    struct timespec start_implicit, end_implicit, start_no_vec, end_no_vec, start_impl_vec, end_impl_vec;

    fr_no_vector = ProcSpeedCalc();
    clock_gettime(CLOCK_MONOTONIC, &start_impl_vec);

    implicitely_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_impl_vec);
    double elapsed_impl_vector_time = ((end_impl_vec.tv_sec * 1000 + (end_impl_vec.tv_nsec / 1.0e6)) -
                                       (start_impl_vec.tv_sec * 1000 + (start_impl_vec.tv_nsec / 1.0e6)));
    cout << "Init Time With Implicit Vectorization: " << elapsed_impl_vector_time << endl;


    clock_gettime(CLOCK_MONOTONIC, &start_no_vec);

    no_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_no_vec);
    double elapsed_no_vector_time = ((end_no_vec.tv_sec * 1000 + (end_no_vec.tv_nsec / 1.0e6)) -
                                     (start_no_vec.tv_sec * 1000 + (start_no_vec.tv_nsec / 1.0e6)));
    cout << "Init Time Without Vectorization: " << elapsed_no_vector_time << endl;


    fr_vector = ProcSpeedCalc();
    struct timespec start_init, end_init;
    clock_gettime(CLOCK_MONOTONIC, &start_init);

    explicitely_vectorized(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_init);
    double elapsed_init_time = ((end_init.tv_sec * 1000 + (end_init.tv_nsec / 1.0e6)) -
                                (start_init.tv_sec * 1000 + (start_init.tv_nsec / 1.0e6)));
    cout << "Explicitly Vectorized Init Time: " << elapsed_init_time << endl;


    struct timespec start_initload, end_initload;
    clock_gettime(CLOCK_MONOTONIC, &start_initload);

    explicitely_vectorizedload(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_initload);
    double elapsed_initload_time = ((end_initload.tv_sec * 1000 + (end_initload.tv_nsec / 1.0e6)) -
                                    (start_initload.tv_sec * 1000 + (start_initload.tv_nsec / 1.0e6)));
    cout << "Explicitly Vectorized Init Time aligned: " << elapsed_initload_time << endl;

    struct timespec start_initlga, end_initlga;
    clock_gettime(CLOCK_MONOTONIC, &start_initlga);

    explicitely_vectorizedloadgatheradd(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_initlga);
    double elapsed_initlga_time = ((end_initlga.tv_sec * 1000 + (end_initlga.tv_nsec / 1.0e6)) -
                                   (start_initlga.tv_sec * 1000 + (start_initlga.tv_nsec / 1.0e6)));
    cout << "Explicitly Vectorized Init lga Time: " << elapsed_initlga_time << endl;


    struct timespec start_initlgas, end_initlgas;
    clock_gettime(CLOCK_MONOTONIC, &start_initlgas);

    explicitely_vectorizedloadgatheraddstore(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);

    clock_gettime(CLOCK_MONOTONIC, &end_initlgas);
    double elapsed_initlgas_time = ((end_initlgas.tv_sec * 1000 + (end_initlgas.tv_nsec / 1.0e6)) -
                                    (start_initlgas.tv_sec * 1000 + (start_initlgas.tv_nsec / 1.0e6)));
    cout << "Explicitly Vectorized Init lgas Time: " << elapsed_initlgas_time << endl;


    f_init_log << _deg << "," << iteration << "," << elapsed_impl_vector_time << "," << elapsed_no_vector_time << ","
               << elapsed_init_time << "," << elapsed_initload_time << "," << elapsed_initlga_time << "," << elapsed_initlgas_time << std::endl;


    free(pnt_affinity);
    free(outEdges);
    free(zeta);

}

int main(int argc, char **argv) {
    // cout<<"CLOCKS_PER_SEC: "<<CLOCKS_PER_SEC<<endl;
    // return 0;
    if (argc >= 2) {
        std::cout << "Set the max thread: " << atoi(argv[1]) << std::endl;
        omp_set_dynamic(0);
        omp_set_num_threads(atoi(argv[1]));
        thread_num = argv[1];
    }
    for (long deg = 64; deg <= 1024 * 64; deg *= 2)
        //    for (long iter =2; iter <= 1024; iter*=2)
        for (long iter = 262144; iter <= 262144; iter *= 2)

            testClockSpeed(deg, iter);

    // int iteration = 100;
    // for(int k=0; k<5; ++k){
    //     for(int i=0; i<50; i+=1){
    //         testClockSpeed((i*i*30) + 20, iteration);
    //     }
    //     iteration *=10;
    // }
    return 0;
}
