#include <stdio.h>
#include <malloc.h>
#include <stdlib.h>

#define SIZE 10

int main(void){
    int *p;

    p=(int *)malloc(sizeof(int)*SIZE);
    if(p == NULL){
        fprintf(stderr,"Malloc Error");
        exit(1);
    }

    for(int i=0; i<SIZE ;i++)
        p[i] = i;

    for(int i=0 ; i<SIZE ; i++)
        printf("%d ",p[i]);

    return 0;
}