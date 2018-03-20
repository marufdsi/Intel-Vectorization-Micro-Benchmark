#include<iostream>
#include<chrono>
using namespace std;
double checkVector(int n){
    double A[n], B[n];
    for (int i = 0; i < n; ++i) {
        A[i] = 1.0;
        B[i] = 1.0;
    }
    std::chrono::time_point<std::chrono::system_clock> start, end;
    start = std::chrono::system_clock::now();
    for (int i = 0; i < n; ++i) {
//      	if(i%4 == 0){
            A[i] += B[i];
//	}
    }
    end = std::chrono::system_clock::now();
    std::chrono::duration<double> elapsed_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout<<"Time Elapsed: "<<elapsed_time.count()<<std::endl;
    return A[0];
}

int main(){
	checkVector(999999999);
	return 0;
}
