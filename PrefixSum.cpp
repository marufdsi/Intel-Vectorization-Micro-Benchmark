#include<iostream>
#include <math.h>
#include <atomic>
using namespace std;

void seq_prefix_sum(int size, int sum, int start, int *arr, int *prefix){
	int next = arr[start-1];
	for(int i=start; i<size; ++i){
		sum += next;
		next = arr[i];
		arr[i] = sum;
		prefix[i] = sum;
	}
}

void prefix_sum(int size, int *arr, int *prefix){
	for(int d=0; d<=(log2(size)-1); ++d){
		#pragma omp parallel for schedule(guided)
		for(int i=0; i<=(size-1); i+=(int)pow(2,(d+1))){
			arr[i+(int)pow(2,(d+1))-1] = arr[i + (int)pow(2,d) -1] + arr[i+(int)pow(2,(d+1))-1];
			prefix[i+(int)pow(2,(d+1))-1] = arr[i+(int)pow(2,(d+1))-1];
		}
	}	
	arr[size-1] = 0;
	for(int d=(int)log2(size)-1; d>=0; --d){
		#pragma omp parallel for schedule(guided)
		for(int i=0; i<=size-1; i+=(int)pow(2, (d+1))){
//			cout<<"size="<<size<<" d="<<d<<"  i="<<i<<" "<<i+(int)pow(2,d)-1<<"    "<<i+(int)pow(2,d+1)-1<<endl;
			int t = arr[i+(int)pow(2,d)-1];
			arr[i+(int)pow(2,d)-1] = arr[i+(int)pow(2,(d+1))-1];
			prefix[i+(int)pow(2,d)-1] = arr[i+(int)pow(2,d)-1];
			arr[i+(int)pow(2,(d+1))-1] = t + arr[i+(int)pow(2,(d+1))-1];
			prefix[i+(int)pow(2,(d+1))-1] = arr[i+(int)pow(2,(d+1))-1];
		}
	}
}

void assign_group(int max_node, int nColor, int *color, int *counts, int group[]){
	int size = pow(2, floor(log2(nColor)));
	int sum = counts[size-1];
	int prefix[nColor];
	prefix_sum(size, counts, &prefix[0]);
	seq_prefix_sum(nColor, sum, size, counts, &prefix[0]);
	#pragma omp parallel for schedule(guided)
	for (int u = 0; u < max_node; ++u) {
            int groupID = color[u];
            group[prefix[groupID]] = u;
            prefix[groupID]++;
        }
}

int main(){
	std::atomic<int> cnt(5);
	cnt = 0;
	int value = std::atomic_fetch_add(&cnt, 1);
	cout<<"Value: "<<value<<endl;
	value = std::atomic_fetch_add(&cnt, 1);
        cout<<"Value2: "<<value<<endl;
	cout<<"count: "<<cnt+5<<endl;
	cout<<ceil(log2(9))<<endl;
	int arr[5]={3,1,2,4,1}, array_size = 5;
	int _group[11];
	int color[11]={0,2,4,0,1,3,3,0,3,2,3};
	assign_group(11, array_size, &color[0], &arr[0], _group);
	cout<<"output: ";
	for(int i=0; i<11; ++i){
		cout<<_group[i]<<" ";
	}
	cout<<endl;
	return 0;
}
