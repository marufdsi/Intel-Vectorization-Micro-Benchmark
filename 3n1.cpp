//
// Created by maruf on 3/3/2018.
//
#include <stdio.h>
int count_ittr(int n){
    int return_value = 1;
    while(n>1){
        if ((n%2) != 0){
            n = (3*n) + 1;
        } else{
            n = n/2;
        }
        return_value++;
    }
    return return_value;
}
int main(){
    int i, j;
    while(scanf("%d %d", &i, &j) == 2){
        printf("%d %d ",i, j);
        if (i>j){
            i = i +j;
            j = i -j;
            i = i -j;
        }
        int max_count = 0;
        for (int k = i; k <= j; ++k) {
            int _count = count_ittr(k);
            max_count = (max_count < _count) ? _count : max_count;
        }
        printf("%d\n",max_count);
    }
    return 0;
}
