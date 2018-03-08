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

double checkVector(int n){
    double A[n], B[n];
    for (int i = 0; i < n; ++i) {
        A[i] = 1.0;
        B[i] = 1.0;
    }
    return A[0];
}
int main(){

  return 0;
}
