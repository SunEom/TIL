#include <stdio.h>


int factorial (int n){
    int i, result = 1;
    for(i=1;i<=n;i++)
        result = result*i;
    return (result);
}


int main(void){
    printf("%d",factorial(5));
    return 0;
}