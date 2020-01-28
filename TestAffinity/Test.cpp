//
// Created by maruf on 12/10/19.
//

#include<omp.h>
#include <iostream>
#include <functional>
#include <chrono>
#include <vector>
#include <math.h>
#include <sstream>
#include <fstream>
#include <cstdlib>
#include <stdint.h>
#include <sstream>
#include "Util.h"

int main (){
    std::string fileName;
    int ppn;
    float * ptr = (float *) malloc(10 * sizeof(float));
    for(int i=0; i<10; ++i){
      std::cout << ptr[i] << " "; 
    }
    std::cout<<std::endl;
    for(int i=0; i<5000; ++i){
      std::cout << ptr[i] << " ";
    }
    std::cout<<std::endl;
    return 0;
}
