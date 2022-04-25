
#include<iostream>
#include "dnn.h"
#include "base_layer.h"
#include "omp.h"
using namespace std;


int main(){
    // omp_set_num_threads(4);
    DNN n;
    n.initNet();
    // n.fuse=true; // whether to use the Conv_BN_Relu fusion method
    matrix input_matrix(1, 3, 4, true);
    n.forward(input_matrix);
    cout<<"finish"<<endl;
    return 0;
}