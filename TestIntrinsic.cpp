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


using namespace std;

typedef int32_t index, sint, node, count;
typedef float edgeweight;

void explicitely_vectorized(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);
void no_vector(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);
void implicitely_vector(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);
void explicitely_vectorizedload(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);
void explicitely_vectorizedloadgatheradd(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);
void explicitely_vectorizedloadgatheraddstore(   node *pnt_outEdges, node *outEdges, node *zeta,  edgeweight *pnt_affinity, int _deg, int iteration);

 

void testClockSpeed(int _deg, int iteration, int thread_num){

  std::cout<<"deg: "<<_deg<<" iteration: "<<iteration<<std::endl;
    string init_log_file = "init_log_file_thread_" + thread_num + ".csv";
    std::ofstream f_init_log;
    std::ifstream infile(init_log_file);
    bool existing_file = infile.good();
    f_init_log.open(init_log_file, std::ios_base::out | std::ios_base::app | std::ios_base::ate);
    if (!existing_file) {
      f_init_log << "Degree" << "," << "Iteration" << "," << "No Vector Time" <<"," << "Implicit Time" << "," << "Intrinsic Time" << "," << "Intrinsic aligned" << "," << "LGA" << "," << "LGAS"<<std::endl;
    }


    ///////////////////memory layout///////////////////////
    node *pnt_outEdges, *outEdges, *zeta;
    edgeweight *pnt_affinity;
    int NBTHREAD=thread_num;

    posix_memalign((void**)&pnt_affinity, 64, sizeof(edgeweight) * _deg * NBTHREAD);
    posix_memalign((void**)&outEdges, 64, sizeof(node) * _deg);
    posix_memalign((void**)&outEdges, 64, sizeof(node) * _deg);

    index neighbor_processed = (_deg/16)*16;
     // 512 bit floating register initialize by all -1.0
    const __m512 fl_set1 = _mm512_set1_ps(-1.0); 
    for (index edge = 0; edge < _deg; ++edge) {
        outEdges[edge] = edge;
	zeta[edge] = (edge%16);
	//zeta[edge] = (edge%16) *16 + (edge % 16);
    }
    pnt_outEdges = &outEdges[0];


    //////////////////////////Different methods/////////////

    struct timespec start_impl_vec, end_impl_vec;
    clock_gettime(CLOCK_MONOTONIC, &start_impl_vec);
    implicitely_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_impl_vec);
    double elapsed_impl_vector_time = ((end_impl_vec.tv_sec * 1000 + (end_impl_vec.tv_nsec / 1.0e6)) - (start_impl_vec.tv_sec * 1000 + (start_impl_vec.tv_nsec / 1.0e6)));
    cout<<"Init Time With Implicit Vectorization: "<<elapsed_impl_vector_time<<endl;


    struct timespec start_no_vec, end_no_vec;
    clock_gettime(CLOCK_MONOTONIC, &start_no_vec);
    no_vector(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_no_vec);
    double elapsed_no_vector_time = ((end_no_vec.tv_sec * 1000 + (end_no_vec.tv_nsec / 1.0e6)) - (start_no_vec.tv_sec * 1000 + (start_no_vec.tv_nsec / 1.0e6)));
    cout<<"Init Time Without Vectorization: "<<elapsed_no_vector_time<<endl;


    struct timespec start_init, end_init;    
    clock_gettime(CLOCK_MONOTONIC, &start_init);
    explicitely_vectorized(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_init);
    double elapsed_explicit_time = ((end_init.tv_sec * 1000 + (end_init.tv_nsec / 1.0e6)) - (start_init.tv_sec * 1000 + (start_init.tv_nsec / 1.0e6)));
    cout<<"Explicitely Vectorized Init Time: "<<elapsed_explicit_time<<endl;


    struct timespec start_initload, end_initload;    
    clock_gettime(CLOCK_MONOTONIC, &start_initload);
    explicitely_vectorizedload(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initload);
    double elapsed_explicitaligned_time = ((end_initload.tv_sec * 1000 + (end_initload.tv_nsec / 1.0e6)) - (start_initload.tv_sec * 1000 + (start_initload.tv_nsec / 1.0e6)));
    cout<<"Explicitely Vectorized Init Time aligned: "<<elapsed_explicitaligned_time<<endl;


    struct timespec start_initlga, end_initlga;    
    clock_gettime(CLOCK_MONOTONIC, &start_initlga);
    explicitely_vectorizedloadgatheradd(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initlga);
    double elapsed_initlga_time = ((end_initlga.tv_sec * 1000 + (end_initlga.tv_nsec / 1.0e6)) - (start_initlga.tv_sec * 1000 + (start_initlga.tv_nsec / 1.0e6)));
    cout<<"Explicitely Vectorized Init lga Time: "<<elapsed_initlga_time<<endl;


    struct timespec start_initlgas, end_initlgas;    
    clock_gettime(CLOCK_MONOTONIC, &start_initlgas);
    explicitely_vectorizedloadgatheraddstore(pnt_outEdges, outEdges, zeta, pnt_affinity, _deg, iteration);
    clock_gettime(CLOCK_MONOTONIC, &end_initlgas);
    double elapsed_lgas_time = ((end_initlgas.tv_sec * 1000 + (end_initlgas.tv_nsec / 1.0e6)) - (start_initlgas.tv_sec * 1000 + (start_initlgas.tv_nsec / 1.0e6)));
    cout<<"Explicitely Vectorized Init lgas Time: "<<elapsed_lgas_time<<endl;



    f_init_log << _deg << "," << iteration << "," << elapsed_no_vector_time << "," << elapsed_impl_vector_time << "," << elapsed_explicit_time << "," << elapsed_explicitaligned_time << "," << elapsed_lga_time<< "," << elapsed_lgas_time<<std::endl;


    free(pnt_affinity);
    free(outEdges);
    free(zeta);

}


int main(int argc, char **argv){
    // cout<<"CLOCKS_PER_SEC: "<<CLOCKS_PER_SEC<<endl;
    // return 0;
  if(argc>=2){
    std::cout<<"Set the max thread: "<< atoi(argv[1]) <<std::endl;
    omp_set_dynamic(0);
    omp_set_num_threads(atoi(argv[1]));
    thread_num = argv[1];
  }

  long deglow   = 64;
  long deghigh  = 1024*64;
  long iterlow  = 64;
  long iterhigh = 16777216
  
  for (long deg = deglow; deg <= deghigh; deg *=2)
    for (long iter = iterlow; iter <= iterhigh; iter*=2)
      testClockSpeed(deg, iter); 

  return 0;
}
