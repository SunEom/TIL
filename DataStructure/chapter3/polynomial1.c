#include <stdio.h>
#define MAX(a,b) ((a)>(b)?(a) : (b))
#define MAX_DEGREE 101

typedef struct {
    int degree;
    float coef[MAX_DEGREE];
} polynomial;

polynomial poly_add1 ( polynomial A, polynomial B){
    polynomial C;
    int Apos = 0, Bpos = 0, Cpos = 0;
    int degree_a = A.degree, degree_b = B.degree;

    C.degree = MAX(degree_a, degree_b);

    //Challenge
    while(degree_a == degree_b && A.coef[Apos] == -B.coef[Bpos]){
        C.degree--;
        Apos++; Bpos++;
        degree_a--; degree_b--;
    }

    while(Apos <= A.degree  && Bpos <= B.degree ){
        if(degree_a>degree_b){
            C.coef[Cpos++] = A.coef[Apos++];
            degree_a--;
        } else if (degree_a == degree_b){
            C.coef[Cpos++] = A.coef[Apos++] + B.coef[Bpos++];
            degree_a--; degree_b--;
        } else {
            C.coef[Cpos++] = B.coef[Bpos++];
            degree_b--;
        }
    }
    return C;
}

void print_poly(polynomial a){
    for (int i=a.degree; i>0; i--){
        printf("%3.1fx^%d + ",a.coef[a.degree-i],i);
    }
    printf("%3.1f\n",a.coef[a.degree]);
}

int main(void){
    // polynomial a  ={5,{3,6,0,0,0,10}};
    // polynomial b  ={4,{7,0,5,0,1}};

    polynomial a = {3,{1,0,2,3}};
    polynomial b = {3,{-1,0,4,-1}};
    polynomial c;
    
    print_poly(a);
    print_poly(b);
    c = poly_add1(a,b);
    printf("-----------------------------------------------------\n");
    print_poly(c);
    return 0;
}