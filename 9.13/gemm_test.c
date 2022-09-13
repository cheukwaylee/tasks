#include <stdio.h>
#include <stdlib.h>
#include <string.h>


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

	data_type m1_loc[N];
	data_type m2_loc[N];
	data_type prod_loc[N];

#pragma HLS array_reshape variable=m1_loc cyclic factor=8
#pragma HLS array_reshape variable=m2_loc cyclic factor=8
#pragma HLS array_reshape variable=prod_loc cyclic factor=8

	memcpy(m1_loc, m1, (N * sizeof(data_type)));
	memcpy(m2_loc, m2, (N * sizeof(data_type)));

	loop_add:	for (int i=0; i<N; i++){
#pragma HLS pipeline II=1
#pragma HLS UNROLL factor=8
		prod_loc[i] = m1_loc[i] + m2_loc[i];
	}

	memcpy(prod, prod_loc, (N * sizeof(data_type)));

}

