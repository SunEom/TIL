#include <stdio.h>
#include <stdlib.h>

#define MAX_STACK_SIZE 100

typedef int element;
typedef struct {
    int top;
    element stack[MAX_STACK_SIZE];
} StackType;

void init_stack(StackType *s){
    s->top =-1;
}

int is_full(StackType *s){
    if(s->top == -1) return 1;
    else return 0;
}

int is_empty(StackType *s){
    if(s->top == MAX_STACK_SIZE-1) return 1;
    else return 0;
}

void push(StackType *s, element item){
    if(is_full(s)){
        fprintf(stderr,"Stack over flow\n");
        exit(1);
    }
    else s->stack[++(s->top)] = item;
}

element pop(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    else return s->stack[(s->top)--];
}

element peek(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty\n");
        exit(1);
    }
    else return s->stack[(s->top)];
}

int main(void){
    StackType s1,s2;

    push(&s1, 1);
    push(&s1, 2);
    push(&s1, 3);
    push(&s2,pop(&s1));
    push(&s2,pop(&s1));
    push(&s2,pop(&s1));

    printf("%d\n",pop(&s2));
    printf("%d\n",pop(&s2));
    printf("%d\n",pop(&s2));
    
    return 0;
}