#include<iostream>
#include<vector>
#include <omp.h>
#include <cmath>
#include <chrono>
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

    for (int i = 0; i < n; ++i) {
        A[i] += B[i];
    }
    return A[0];
}
int main(){
  std::chrono::time_point<std::chrono::system_clock> start, end;
  start = std::chrono::system_clock::now();
  checkVector(5000000);
  end = std::chrono::system_clock::now();
  std::chrono::duration<double> elapsed_seconds = std::chrono::duration_cast<std::chrono::milliseconds>(
                        end - start);
  double elapsedTime = elapsed_seconds.count();
  cout<<"Time Required: "<<elapsedTime<<endl;
  return 0;
}
