#include<iostream>
using namespace std;

void foo0(int n, int *a)
{
    for (int i = 0; i < n; ++i) {
        if (n & 1) {
            a[i] = a[i+1];
        }
    }
}

void foo1(int n, int *a)
{
   // will not be vectorized due to data dependency.
    for (int i = 1; i < n; ++i) {
        if (n & 1) {
            a[i] = a[i+1];
        }
    }
}

int block_size = 16;

int getLoopConditon(){
	return block_size;
}
int main(){
std::cout<<"Hello World"<<std::endl;
int value = 0;
int a[100], b[100], c[100];
int u = getLoopConditon();
int node;
for(int start = 0; start<16; start++){
	int frame = start * 16;
	node = u + frame;
	
}
for(int i=0; i<u; i +=1){
      a[i] = i;
      b[i] = i+1;
}
for(int i=0; i<u; i++){
	c[i] = a[i] + b[i];
}
std::cout<<"Value of c[50] = "<<c[50]<<std::endl;
return 0;
}
