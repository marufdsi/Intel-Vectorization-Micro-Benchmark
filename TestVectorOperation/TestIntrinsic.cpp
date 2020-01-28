#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <math.h>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <stdint.h>
#include <sstream>
// #include <likwid.h>


using namespace std;

typedef int32_t index, sint, node, count;
typedef float edgeweight;

void vecLoadGatherScatter(node *pnt_outEdges, edgeweight *pnt_outEdgeWeight, node *zeta, edgeweight *pnt_affinity, int _deg, int iteration);

void OMPLoadGatherScatter(node *pnt_outEdges, edgeweight *pnt_outEdgeWeight, node *zeta, edgeweight *pnt_affinity, int _deg, int iteration);

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


void testClockSpeed(int _deg, int iteration, int thread_num) {

    std::cout << "deg: " << _deg << " iteration: " << iteration << std::endl;
    string init_log_file;
    {
        std::stringstream ss;
        ss << "init_log_file_thread_" << thread_num << ".csv";
        init_log_file = ss.str();
    }
    std::ofstream f_init_log;
    std::ifstream infile(init_log_file);
    bool existing_file = infile.good();
    f_init_log.open(init_log_file, std::ios_base::out | std::ios_base::app | std::ios_base::ate);
    if (!existing_file) {
        f_init_log << "Degree" << "," << "Iteration" << "," << "No Vector Time" << "," << "Implicit Time" << ","
                   << "Intrinsic Time" << "," << "Intrinsic aligned" << "," << "LGA" << "," << "LGAS" << std::endl;
    }

    string benchmark_output_file = "BenchMarkLogFile.csv";
    std::ofstream blog;
    std::ifstream checkFile(benchmark_output_file);
    blog.open(init_log_file, std::ios_base::out | std::ios_base::app | std::ios_base::ate);
    if (!checkFile.good()) {
        blog << "Degree" << "," << "Iteration" << "," << "OMPTime" << "," << "VecTime"<< std::endl;
    }

    ///////////////////memory layout///////////////////////
    node *pnt_outEdges, *outEdges, *zeta;
    edgeweight *pnt_affinity, *pnt_outEdgeWeight;
    int NBTHREAD = thread_num;

    posix_memalign((void **) &pnt_affinity, 64, sizeof(edgeweight) * _deg * NBTHREAD);
    posix_memalign((void **) &outEdges, 64, sizeof(node) * _deg);
    posix_memalign((void **) &pnt_outEdgeWeight, 64, sizeof(edgeweight) * _deg);
    posix_memalign((void **) &zeta, 64, sizeof(node) * _deg);

    std::cout << "memory allocated" << std::endl;

    index neighbor_processed = (_deg / 16) * 16;
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
        zeta[edge] = (edge % 16);
        pnt_outEdgeWeight[edge] = (edge%10 +1) * 1.0;
        //zeta[edge] = (edge%16) *16 + (edge % 16);
    }
    pnt_outEdges = &outEdges[0];

    std::cout << "memory initialized" << std::endl;

    //////////////////////////Different methods/////////////

    /************** Run OMP Load, Gather and Scatter ***************/
    struct timespec _start_, _end_;
    OMPLoadGatherScatter(pnt_outEdges, pnt_outEdgeWeight, , zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &_start_);
    OMPLoadGatherScatter(pnt_outEdges, pnt_outEdgeWeight, , zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &_end_);
    double time_omp = ((_end_.tv_sec * 1000 + (_end_.tv_nsec / 1.0e6)) - (_start_.tv_sec * 1000 + (_start_.tv_nsec / 1.0e6)));
    /************** End OMP Load, Gather and Scatter ***************/
    /************** Run Vec Load, Gather and Scatter ***************/
    vecLoadGatherScatter(pnt_outEdges, pnt_outEdgeWeight, , zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &_start_);
    vecLoadGatherScatter(pnt_outEdges, pnt_outEdgeWeight, , zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &_end_);
    double time_vec = ((_end_.tv_sec * 1000 + (_end_.tv_nsec / 1.0e6)) - (_start_.tv_sec * 1000 + (_start_.tv_nsec / 1.0e6)));
    /************** End Vec Load, Gather and Scatter ***************/
    /// Warm up implicit vectorization
    implicitely_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_impl_vec, end_impl_vec;
    clock_gettime(CLOCK_MONOTONIC, &start_impl_vec);
    implicitely_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_impl_vec);
    double elapsed_impl_vector_time = ((end_impl_vec.tv_sec * 1000 + (end_impl_vec.tv_nsec / 1.0e6)) -
                                       (start_impl_vec.tv_sec * 1000 + (start_impl_vec.tv_nsec / 1.0e6)));
    cout << "Init Time With Implicit Vectorization: " << elapsed_impl_vector_time << endl;

    /// Warm up no vectorization
    no_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_no_vec, end_no_vec;
    clock_gettime(CLOCK_MONOTONIC, &start_no_vec);
    no_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_no_vec);
    double elapsed_no_vector_time = ((end_no_vec.tv_sec * 1000 + (end_no_vec.tv_nsec / 1.0e6)) -
                                     (start_no_vec.tv_sec * 1000 + (start_no_vec.tv_nsec / 1.0e6)));
    cout << "Init Time Without Vectorization: " << elapsed_no_vector_time << endl;

    /// Warm up explicit vectorization
    explicitely_vectorized(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_init, end_init;
    clock_gettime(CLOCK_MONOTONIC, &start_init);
    explicitely_vectorized(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_init);
    double elapsed_explicit_time = ((end_init.tv_sec * 1000 + (end_init.tv_nsec / 1.0e6)) -
                                    (start_init.tv_sec * 1000 + (start_init.tv_nsec / 1.0e6)));
    cout << "Explicitely Vectorized Init Time: " << elapsed_explicit_time << endl;

    /// Warm up explicit vectorization load
    explicitely_vectorizedload(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_initload, end_initload;
    clock_gettime(CLOCK_MONOTONIC, &start_initload);
    explicitely_vectorizedload(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initload);
    double elapsed_explicitaligned_time = ((end_initload.tv_sec * 1000 + (end_initload.tv_nsec / 1.0e6)) -
                                           (start_initload.tv_sec * 1000 + (start_initload.tv_nsec / 1.0e6)));
    cout << "Explicitely Vectorized Init Time aligned: " << elapsed_explicitaligned_time << endl;

    /// Warm up explicit vectorization load, gather and add
    explicitely_vectorizedloadgatheradd(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_initlga, end_initlga;
    clock_gettime(CLOCK_MONOTONIC, &start_initlga);
    explicitely_vectorizedloadgatheradd(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initlga);
    double elapsed_lga_time = ((end_initlga.tv_sec * 1000 + (end_initlga.tv_nsec / 1.0e6)) -
                               (start_initlga.tv_sec * 1000 + (start_initlga.tv_nsec / 1.0e6)));
    cout << "Explicitely Vectorized Init lga Time: " << elapsed_lga_time << endl;

    /// Warm up explicit vectorization load, gather, add and store
    explicitely_vectorizedloadgatheraddstore(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    struct timespec start_initlgas, end_initlgas;
    clock_gettime(CLOCK_MONOTONIC, &start_initlgas);
    explicitely_vectorizedloadgatheraddstore(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initlgas);
    double elapsed_lgas_time = ((end_initlgas.tv_sec * 1000 + (end_initlgas.tv_nsec / 1.0e6)) -
                                (start_initlgas.tv_sec * 1000 + (start_initlgas.tv_nsec / 1.0e6)));
    cout << "Explicitely Vectorized Init lgas Time: " << elapsed_lgas_time << endl;


    f_init_log << _deg << "," << iteration << "," << elapsed_no_vector_time << "," << elapsed_impl_vector_time << ","
               << elapsed_explicit_time << "," << elapsed_explicitaligned_time << "," << elapsed_lga_time << ","
               << elapsed_lgas_time << std::endl;
    f_init_log.close();
    blog << _deg << "," << iteration << "," << time_omp << "," << time_vec << std::endl;

         free(pnt_affinity);
    free(outEdges);
    free(zeta);

}


int main(int argc, char **argv) {
    // cout<<"CLOCKS_PER_SEC: "<<CLOCKS_PER_SEC<<endl;
    // return 0;
    int thread_num = 1;
    if (argc >= 2) {
        std::cout << "Set the max thread: " << strtol(argv[1], (char **) NULL, 10) << std::endl;
        omp_set_dynamic(0);
        omp_set_num_threads((int) strtol(argv[1], (char **) NULL, 10));
        thread_num = (int) strtol(argv[1], (char **) NULL, 10);
    }

    long deglow = 16;
    long deghigh = 1024 * 64;
    long iterlow = 64;
    long iterhigh = 16777216;

    for (long deg = deglow; deg <= deghigh; deg *= 2)
        for (long iter = iterlow; iter <= iterhigh; iter *= 2)
            testClockSpeed(deg, iter, thread_num);

    return 0;
}
