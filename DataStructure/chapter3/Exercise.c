#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

//  #05
struct person {
    char name[10];
    int age;
    float payment;
} ;

//  #06
typedef struct {
  float real;
  float imaginary;  
} complex;

complex complex_add(complex c1, complex c2){
    complex result;
    result.real  = c1.real + c2.real;
    result.imaginary  = c1.imaginary + c2.imaginary;
    return result;
}

//  #07
void print_complex(complex c){
    printf("%g + %gi\n",c.real, c.imaginary);
}

//  #08
void insert(int arr[], int loc, int value){
    for(int i=98; i>=loc;i--){
        arr[i+1] = arr[i];
    }
    arr[loc] = value;
}

//  #10
void delete(int arr[], int loc){
    for(int i=loc; i<100 ; i++){
        arr[i] = arr[i+1];
    }
}

//  #12
typedef struct myStruct{
    int num;
    char str[20];
} myStruct;


int main(void){
//  #04
    int two[10];

    for(int i=0; i< 10; i++)
        two[i] = pow(2,i);
    
    for(int i=0; i<10 ; i++)
        printf("%d ",two[i]);
    printf("\n");

//  #06
    complex c1={3,5}, c2={2,7};

//  #07
    complex c3 = complex_add(c1,c2);
    print_complex(c1);
    print_complex(c2);
    print_complex(c3);

//  #08
    int items = 6;
    int array[100]={1,2,3,4,5,6};
    insert(array,2,30);
    items++;

    for(int i=0;i<items;i++)
        printf("%d ",array[i]);
    printf("\n");

//  #10
    delete(array,2);
    items--;

    for(int i=0;i<items;i++)
        printf("%d ",array[i]);
    printf("\n");

//  #12
    myStruct * s;

    s = (myStruct *)malloc(sizeof(myStruct));

    s->num = 100;
    strcpy(s->str,"just testing");

    printf("%d %s\n",s->num,s->str);

    free(s);

    return 0;
}
