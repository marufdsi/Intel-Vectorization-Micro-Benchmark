#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>
#include <vector>
using namespace std;

double checkVector(int n){
    double A[n], B[n];
    for (int i = 0; i < n; ++i) {
        A[i] = 1.0;
        B[i] = 1.0;
    }
//    std::chrono::time_point<std::chrono::system_clock> start, end;
  //  start = std::chrono::system_clock::now();
    for (int i = 0; i < n; ++i) {
//      	if(i%4 == 0){
            A[i] += B[i];
//	}
    }
   // end = std::chrono::system_clock::now();
   // std::chrono::duration<double> elapsed_time = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
   // std::cout<<"Time Elapsed: "<<elapsed_time.count()<<std::endl;
   cout<<"done"<<endl;
    return A[0];
}



int main(){
typedef int index;

int node_sort_by_deg[10];
int outDegree[10];

int z = 100;
int t;
if((t = 0) > 0){
	std::cout<<"inside"<<std::endl;
}
std::cout<<"t: "<<t<<std::endl;

std::vector<std::vector<int> > groups(z);
        std::vector<int> track_groups(z, -1);
        std::vector<int> mark(z, -1);
        int nGroup = 1;
std::cout<<track_groups[1]<<std::endl;

for(int i=0; i<10; i++){
	node_sort_by_deg[i] = i;
	if(i%2 == 0){
		outDegree[i] = 20 - i;
	} else{
		outDegree[i] = 40 - i;
	}
}

auto Merge = [&](int low, int high, int mid) {
            // We have low to mid and mid+1 to high already sorted.
            int i, j, k, temp[high-low+1];
            i = low;
            k = 0;
            j = mid + 1;
            // Merge the two parts into temp[].
            while (i <= mid && j <= high) {
                if (outDegree[node_sort_by_deg[i]] < outDegree[node_sort_by_deg[j]]) {
                    temp[k] = node_sort_by_deg[i];
                    k++;
                    i++;
                } else {
                    temp[k] = node_sort_by_deg[j];
                    k++;
                    j++;
                }
            }
            // Insert all the remaining values from i to mid into temp[].
            while (i <= mid) {
                temp[k] = node_sort_by_deg[i];
                k++;
                i++;
            }
            // Insert all the remaining values from j to high into temp[].
            while (j <= high) {
                temp[k] = node_sort_by_deg[j];
                k++;
                j++;
            }

            // Assign sorted data stored in temp[] to a[].
            for (i = low; i <= high; i++) {
                node_sort_by_deg[i] = temp[i-low];
            }
        };

        std::function<void (index, index)> sortGraph = [&](index low, index high){
            int mid;
            if (low < high)
            {
                mid=(low+high)/2;
                // Split the data into two half.
                sortGraph(low, mid);
                sortGraph(mid+1, high);

                // Merge them to get sorted output.
                Merge(low, high, mid);
            }
        };

	sortGraph(0, 9);

	for(int i=0; i<10; i++){
		std::cout<<"i: "<<i<<" nodes:"<<node_sort_by_deg[i]<<" deg: "<<outDegree[node_sort_by_deg[i]]<<std::endl;
	}
//	checkVector(999999999);
	return 0;
}
