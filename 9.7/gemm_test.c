#include <stdio.h>
#include <stdlib.h>


#define row_size 64
#define col_size 64

#define N row_size*col_size
#define block_size 8

//typedef double TYPE;
typedef int data_type;

void bbgemm_top(data_type m1[N], data_type m2[N], data_type prod[N]) {
//#pragma HLS INTERFACE m_axi port=a_arr offset=slave bundle=gmem0 
//#pragma HLS INTERFACE m_axi port=b_arr offset=slave bundle=gmem1 
//#pragma HLS INTERFACE m_axi port=c_arr offset=slave bundle=gmem2 
//#pragma HLS INTERFACE ap_ctrl_hs port=return

	for (int i=0; i<N; i++){

#pragma HLS UNROLL factor=8
#pragma HLS pipeline II=1

#pragma HLS ARRAY_PARTITION variable=m1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=m2 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=prod type=cyclic factor=2


		prod[i] = m1[i] + m2[i];
	}

}


int main() {
	data_type a_arr[N];
	data_type b_arr[N];
	data_type c_arr[N];
//	data_type c_arr_ref[N] = {0};

//	for (auto i = 0; i < N; i++)
//		a_arr[i] = b_arr[i] = i;

	bbgemm_top(a_arr, b_arr, c_arr);

	return 0;
}

