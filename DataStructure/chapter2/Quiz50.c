#include <stdio.h>

// #01
int sub(int n){
    if(n<0) return 0;
    return n+sub(n-3);
}

//#02
int sub2(int n){
    int result = 0;
    int i;
    for(i=n;i>0;i-=3)
        result +=i;
    return result;
}

int main(void){
    printf("sub : %d\n",sub(10));
    printf("sub2 : %d\n",sub2(10));
    return 0;
}