#include <stdio.h>

double slow_power (double x, int n){
    int i;
    double result = 1.0;

    for(i=0;i<n;i++){
        result *=x;
    }
    return (result);
}

double fast_power (double x , int n){
    if(n == 1)
        return x;
    else {
        if(n%2==1){
            return x * fast_power(x*x,n/2);
        } else{
            return fast_power(x*x,n/2);
        }
    }
}

int main(void){
    printf("slow power : %g\n",slow_power(5.0,3));
    printf("fast power : %g\n",fast_power(5.0,3));
}