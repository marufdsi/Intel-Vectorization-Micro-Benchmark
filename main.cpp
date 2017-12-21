#include<iostream>

using namespace std;


int block_size = 16;

int checkVectorization(int startNode, int frameSize) {
    int node;
    int maxDeg;
    int deg[16];
    for (int i=0; i<16; i++){
        deg[i] = i;
    }
    for (int start = 0; start < frameSize; ++start) {
        int nextJump = start * frameSize;
        node = startNode + nextJump;
        int max_deg = 0;
        int  _deg = deg[node];
        if (_deg > max_deg) {
            max_deg = _deg;
        }
    }
    return block_size;
}

int main() {
    std::cout << "Hello World" << std::endl;
    int value = 0;
    int a[100], b[100], c[100];
    int node;
    checkVectorization(0, 1);
    std::cout << "Value of c[50] = " << c[50] << std::endl;
    return 0;
}
