#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define MAX_DEGREE 101
#define MAX_TERMS 101

typedef struct {
    int degree;
    float coef[MAX_DEGREE];
} polynomial1;

typedef struct {
    float coef;
    int expon;
} polynomial2;
polynomial2 terms[MAX_TERMS] = {{6,3},{8,2},{9,0},{2,3},{3,2},{1,1},{4,0}};
int avail =7;


polynomial1 poly_minus1(polynomial1 A , polynomial1 B){
    int Apos=0, Bpos=0, Cpos=0;
    int degree_a = A.degree, degree_b = B.degree;
    polynomial1 C;
    if(degree_a >= degree_b)
        C.degree = degree_a;
    
    while(degree_a == degree_b && A.coef[Apos] == B.coef[Bpos]){
        C.degree--;
        degree_a--; degree_b--;
        Apos++; Bpos++;
    }

    while(Apos<=A.degree && Bpos <=B.degree){
        if(degree_a>degree_b){
            C.coef[Cpos++] = A.coef[Apos++];
            degree_a--;
        } else if (degree_a == degree_b){
            C.coef[Cpos++] = A.coef[Apos++] - B.coef[Bpos++];
            degree_a--; degree_b--;
        } else {
            C.coef[Cpos++] = -B.coef[Bpos++];
            degree_b--;
        }
    }

    return C;
}

void attach(float coef, int expon){
    if(avail>MAX_TERMS){
        fprintf(stderr,"Stack Over");
        exit(1);
    }
    terms[avail].coef = coef;
    terms[avail].expon = expon;
    avail++;
}

char compare(int a, int b){
    if(a > b) return '>';
    else if( a==b ) return '=';
    else return '<';
}

void poly_minus2(int As, int Ae, int Bs, int Be, int *Cs, int *Ce){
    *Cs = avail;
    float tempcoef;
    while(As<=Ae && Bs<=Be){
        switch(compare(terms[As].expon, terms[Bs].expon)){
            case '>':
            attach(terms[As].coef,terms[As].expon);
            As++;
            break;
            case '=':
            tempcoef = terms[As].coef - terms[Bs].coef;
            attach(tempcoef,terms[As].expon);
            As++; Bs++;
            break;
            case '<':
            attach(-terms[Bs].coef,terms[Bs].expon);
            Bs++;
            break;
        }
    }

    while(As<=Ae){
        attach(terms[As].coef,terms[As].expon);
        As++;
    }

    while(Bs<=Be){
        attach(-terms[Bs].coef,terms[Bs].expon);
        Bs++;
    }

    *Ce = avail-1;
}


void print_poly1(polynomial1 A){
    for (int i=A.degree;i>0;i--)
        printf("%3.1fx^%d + ",A.coef[A.degree-i],i);
    printf("%3.1f\n",A.coef[A.degree]);
}

void print_poly2(int s, int e){
    for(int i=s;i<e;i++)
        printf("(%3.1f)x^%d +",terms[i].coef, terms[i].expon);
    printf("%3.1fx^%d \n",terms[e].coef, terms[e].expon);
}

float poly_eval1(polynomial1 P, float x){
    float result = 0.0;
    for(int i = P.degree;i>0;i--)
        result += pow(x,i)*P.coef[P.degree-i];
    result += P.coef[P.degree];
    return result;
}

float poly_eval2(int s, int e, float x){
    float result =0.0;
    for(int i=s; i<e; i++)
        result += terms[i].coef*pow(x,terms[i].expon);
    result += terms[e].coef*pow(x,terms[e].expon);
    return result;
}


int main(void){
    // #3 - 1
    polynomial1 A = {3,{6,8,0,9}};
    polynomial1 B = {3,{2,3,1,4}};
    polynomial1 C;
    
    print_poly1(A);
    print_poly1(B);
    C = poly_minus1(A,B);
    printf("----------------------------------------\n");
    print_poly1(C);

    printf("\n\n\n");

    // #3 - 2
    int As = 0, Ae =2, Bs = 3, Be = 6;
    int Cs, Ce;

    poly_minus2(As,Ae,Bs,Be,&Cs,&Ce);
    print_poly2(As,Ae);
    print_poly2(Bs,Be);
    printf("----------------------------------------\n");
    print_poly2(Cs,Ce);


    printf("\n\n\n");
    // #5-1
    printf("poly_eval1 => A(5) : %g \n",poly_eval1(A,5));
    printf("poly_eval1 => A(3) : %g \n",poly_eval1(A,3));
    printf("poly_eval1 => A(1) : %g \n",poly_eval1(A,1));
    printf("\n\n");
    // #5-2
    printf("poly_eval2 => A(5) : %g \n",poly_eval2(0,2,5));
    printf("poly_eval2 => A(3) : %g \n",poly_eval2(0,2,3));
    printf("poly_eval2 => A(1) : %g \n",poly_eval2(0,2,1));

    return 0;
}
