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

using namespace std;
int main(){
  int block = 100000000;
  int size = block*16;
  //	  float A[size], B[size];
  float *A, *B;
  posix_memalign((void**)&A, 64, sizeof(float) * size);
  posix_memalign((void**)&B, 64, sizeof(float) * size);

  for(int i=0; i<size; ++i){
    A[i] = i+1;
    B[i] = i+1;
  }
 
  for (int iterations = 0; iterations< 100; ++iterations) {
    struct timespec start_v, end_v, start, end;
    clock_gettime(CLOCK_MONOTONIC, &start);
#pragma novector
    for(int i=0; i<size; ++i){
      A[i] += B[i];
    }
    clock_gettime(CLOCK_MONOTONIC, &end);
    double elapsed_no_vec_time = ((end.tv_sec * 1000 + (end.tv_nsec / 1.0e6)) - (start.tv_sec * 1000 + (start.tv_nsec / 1.0e6)));
  
    clock_gettime(CLOCK_MONOTONIC, &start_v);
#pragma unroll(4)
    for(int i=0; i<size; i+=16){
      __m512 A_v = _mm512_load_ps((__m512 *)&A[i]);
      __m512 B_v = _mm512_load_ps((__m512 *)&B[i]);
      A_v = _mm512_add_ps(A_v, B_v);
      _mm512_store_ps(&A[i], A_v);
    }
    clock_gettime(CLOCK_MONOTONIC, &end_v);                                                                                                                                                                 
    double elapsed_intrinsic_time = ((end_v.tv_sec * 1000 + (end_v.tv_nsec / 1.0e6)) - (start_v.tv_sec * 1000 + (start_v.tv_nsec / 1.0e6))); 
    /*
      clock_gettime(CLOCK_MONOTONIC, &start);
      #pragma novector
      for(int i=0; i<size; ++i){
      A[i] += B[i];
      }
      clock_gettime(CLOCK_MONOTONIC, &end);
      double elapsed_no_vec_time = ((end.tv_sec * 1000 + (end.tv_nsec / 1.0e6)) - (start.tv_sec * 1000 + (start.tv_nsec / 1.0e6)));
    */  
    std::cout<<"Intrinsic Time: "<< elapsed_intrinsic_time << "  No Vector Time: " << elapsed_no_vec_time 
	     <<" Intrinsic BW: "<<(sizeof(float) * size/elapsed_intrinsic_time)*1000./1000./1000./1000.<<" GB/s"<<std::endl;
  }
  return 0;
}
