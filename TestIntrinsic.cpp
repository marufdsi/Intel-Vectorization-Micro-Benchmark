#include<omp.h>
#include <iostream>
#include <functional>
//#include <chrono>                                                                                                                                                                                                
#include <vector>
#include <mmintrin.h>
#include <xmmintrin.h>
#include <emmintrin.h>
#include <immintrin.h>
using namespace std;


int main(){
  typedef int index;

  int z = 40;
  int node_sort_by_deg[z];
  int outDegree[z];
  int aa[100];
  float f_a[100];
  for(int i=0; i<100; i++){
    aa[i] = i + (i%4);
    if(i%2 == 0)
      f_a[i] = -1.0;
    else
      f_a[i] = 0.0;
  }

  cout<<"f_a:";
  for(int i=0; i<100; i++){
    cout<<f_a[i]<<" ";
  }
  cout<<endl;
  const   __m512 fl_set1 = _mm512_set1_ps(-1.0);
  const __mmask16 new_comm = _mm512_cmpeq_ps_mask(fl_set1, _mm512_load_ps((__m512 *)&f_a[0]));
  cout<<" community mask:"<<((unsigned)new_comm)<<endl;
  __m512i r_a = _mm512_loadu_si512((__m512i *)&aa[0]);
  //      __m256i r_a = _mm256_load_si256((__m256i *)&node_sort_by_deg[0]);                                                                                                                                          
  __m512i cd = _mm512_conflict_epi32(r_a);
  const   __m512i set0 = _mm512_set1_epi32(0x00000000);
  const   __m512i set1 = _mm512_set1_epi32(0xFFFFFFFF);
  // Calculate mask using NAND of C_conflict and set1                                                                                                                                                        
  const __mmask16 mask = _mm512_testn_epi32_mask(cd, set1);
  int * val_mask = (int*) &mask;
  __m512i distinct_comm, v_not_processed;
  distinct_comm = _mm512_mask_compress_epi32(set0, mask, r_a);
  __m512i lz = _mm512_maskz_lzcnt_epi32(mask, r_a);
  //unsigned msk  = _mm512_movemask_ps(_mm512_castsi512_ps(lz));                                                                                                                                             
  int cnt = _mm_popcnt_u32((unsigned)mask);
  //__m512i pop = _mm512_popcnt_epi32(cd);                                                                                                                                                                   
  int * val_cd = (int*) &cd;
  int * val_lz = (int*) &lz;
  int * val_comm = (int*) &distinct_comm;
  //int * val_pop = (int*) &pop;                                                                                                                                                                             
  cout<<"array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< aa[i] << " ";
  }
  cout<<endl<<"conflict array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_cd[i]<<" ";
  }
  cout<<endl<<"count: "<<cnt<<" mask:"<<((unsigned)mask)<<" _mm_countbits_32:"<<_mm_countbits_32(10);
  cout<<endl<<"mask array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_mask[i]<<" ";
  }
  cout<<endl<<"compress array: "<<endl;
  for(int i=0; i<16; i++){
    cout<< val_comm[i]<<" ";
  }
  cout<<endl<<"zero count array: "<<endl;
  for(int i=0; i<16; i++){
    cout << val_lz[i]<<" ";
  }
  /*cout<<endl<<"pop count: "<<endl;                                                                                                                                                                         
        for(int i=0; i<10; i++){                                                                                                                                                                                   
	cout<<val_pop[i]<<" ";                                                                                                                                                                                   
	}*/
  cout<<endl;
  return 0;

}
