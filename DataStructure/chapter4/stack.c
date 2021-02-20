#include <stdio.h>
#include <stdlib.h>

#define MAX_STACK_SIZE 100
typedef int element;
element stack[MAX_STACK_SIZE];
int top = -1;

int is_empty(){
    if(top == -1) return 1;
    else return 0;
}

int is_full(){
    if(top == MAX_STACK_SIZE-1) return 1;
    else return 0;
}

void push(element x){
    if(is_full()){
        fprintf(stderr,"Stack Over Flow\n");
        exit(1);
    }
    stack[++top] = x;
}

element pop(){
    if(is_empty()){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    return stack[top--];
}

element peek(){
    if(is_empty()){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    return stack[top];
}

int main(void){
    push(1);
    push(2);
    push(3);
    printf("%d\n",pop());
    printf("%d\n",pop());
    printf("%d\n",pop());
    return 0;

}