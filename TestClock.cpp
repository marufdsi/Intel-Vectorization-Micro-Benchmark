#include<time.h>
#include <sys/time.h>
#include<iostream>
#include <cstdlib>
#include <stdint.h>
using namespace std;

//  Windows
#ifdef _WIN32
 
#include <intrin.h>
uint64_t rdtsc(){
    return __rdtsc();
}
 
//  Linux/GCC
#else
 
uint64_t rdtsc(){
    unsigned int lo,hi;
    __asm__ __volatile__ ("rdtsc" : "=a" (lo), "=d" (hi));
    return ((uint64_t)hi << 32) | lo;
}
 
#endif

int main(){
	int c=0, a=234, b=94;
	//struct timeval start, end;
	struct timespec start, end;
	uint64_t tick = rdtsc();  // tick before
   	//gettimeofday(&start, NULL);
	clock_gettime(CLOCK_MONOTONIC, &start);
	for(int i=0; i<900909090; i++){
		c = a+b;
		c = a+b;
		c = a+b;
	}
	//gettimeofday(&end, NULL);
	cout << rdtsc() - tick << endl; // difference
	clock_gettime(CLOCK_MONOTONIC, &end);
	long start_s, end_s, start_ms, end_ms;
	start_s = start.tv_sec;
	end_s = end.tv_sec;
	start_ms = start.tv_nsec/1.0e6;
	end_ms = end.tv_nsec/1.0e6;
	cout<<"Time in MS: "<< ((end_s*1000 + end_ms) - (start_s*1000 +start_ms)) <<endl;
	return 0;
}
