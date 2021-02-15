#include <stdio.h>

void swap(int *px, int *py){
    int temp;
    temp = *px;
    *px = *py;
    *py = temp;
}

int main(void){
    int a = 10;
    int b = 20;

    printf("%d %d\n",a,b);

    swap(&a,&b);

    printf("%d %d\n",a,b);
    return 0;
}