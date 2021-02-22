#include <stdio.h>
#include <stdlib.h>

void push(int stack[],int *top,int item){
    stack[++(*top)] = item;
}

int pop(int stack[],int *top){
    return stack[(*top)--];
}

int main(void){
    int len;
    int top=-1;
    int tmp;
    int *stack;

    printf("Lenght of Array : ");
    scanf("%d",&len);

    stack = (int*)malloc(len * sizeof(int));

    printf("Enter the numbers : ");
    for(int i=0; i<len ;i++){
        scanf("%d",&tmp);
        push(stack,&top,tmp);
    }

    printf("Reversed result : ");
    for(int i=0; i<len ;i++){
        printf("%d ",pop(stack,&top));
    }
    
    return 0;
}