#include <stdio.h>

#define ROWS 3
#define COLS 3

void matrix_sum(int A[ROWS][COLS], int B[ROWS][COLS], int C[ROWS][COLS]){
    for(int r=0;r<ROWS;r++)
        for(int c=0; c<COLS;c++)
            C[r][c] = A[r][c]+B[r][c];

}

void print_matrix(int A[ROWS][COLS]){
    printf("============================\n");
    for(int r=0;r<ROWS;r++){
        for(int c=0; c<COLS;c++)
            printf("%d\t",A[r][c]);
        printf("\n");
    }
    printf("============================\n");
}

int main(void){
    int A[ROWS][COLS] = {{1,2,6},{4,8,6},{7,10,9}};
    int B[ROWS][COLS] = {{2,2,6},{4,5,2},{7,3,9}};
    int C[ROWS][COLS];
    matrix_sum(A,B,C);

    print_matrix(A);
    print_matrix(B);
    print_matrix(C);
    return 0;
}