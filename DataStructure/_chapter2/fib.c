#include <stdio.h>

//recursive
int fib(int n){
    if( n ==1 ) return 1;
    else if( n == 2 ) return 1;
    else return fib(n-1) + fib(n-2);
}

//looping
int fib2(int n){

    int num1, num2, result;

    if (n == 1) return 1;
    if (n == 2) return 1;

    num1 = 1;
    num2 = 1;
    
    for(int i=3;i<=n;i++){
        result = num1 + num2;
        num1 = num2;
        num2 = result;
    }

    return result;
}

int main(void){
    for(int i=1;i<10;i++)
        printf("%d ",fib(i));

    printf("\n\n");

    for(int i=1;i<10;i++)
        printf("%d ",fib2(i));
    return 0;
}