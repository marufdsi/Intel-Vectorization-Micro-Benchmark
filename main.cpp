#include<iostream>

using namespace std;


int block_size = 16;

int checkVectorization(int startNode, int frameSize) {
    int node;
    for (int start = 0; start < frameSize; ++start) {
        int nextJump = start * frameSize;
        node = startNode + nextJump;
    }
    return block_size;
}

int main() {
    std::cout << "Hello World" << std::endl;
    int value = 0;
    int a[100], b[100], c[100];
    int node;
    checkVectorization(0, 16);
    std::cout << "Value of c[50] = " << c[50] << std::endl;
    return 0;
}
