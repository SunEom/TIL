#include <stdio.h>
#include <stdlib.h>

#define MAX_STACK_SIZE 100
#define MAX_STRING 100

typedef struct {
    int student_no;
    char name[MAX_STRING];
    char address[MAX_STRING];
} element;

element stack[MAX_STACK_SIZE];
int top=-1;

int is_empty(){
    if(top == -1 ) return 1;
    else return 0;
}

int is_full(){
    if (top == MAX_STACK_SIZE-1) return 1;
    else return 0;
}

void push(element item){
    if(is_full()){
        fprintf(stderr,"Stack Over Flow\n");
        exit(1);
    }
    else stack[++top] = item;
}

element pop(){
    if(is_empty()){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    else return stack[top--];
}

element peek(){
    if(is_empty()){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    else return stack[top];
}

int main(void){
    element ie={20190001,"Hong","Seoul"};
    element oe;
    push(ie);
    oe = pop();

    printf("Num : %d\n",oe.student_no);
    printf("Name : %s\n",oe.name);
    printf("Address : %s\n",oe.address);

    return 0;
}

