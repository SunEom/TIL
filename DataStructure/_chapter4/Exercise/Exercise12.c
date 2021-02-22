#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_STACK_SIZE 100

typedef char element;
typedef struct {
    int top;
    element stack[MAX_STACK_SIZE];
} StackType;

void init_stack(StackType *s){
    s->top = -1;
}

void push(StackType *s, element item){
    s->stack[++(s->top)] = item;
}

element pop(StackType *s){
    return s->stack[(s->top)--];
}

element peek(StackType *s){
    return s->stack[(s->top)];
}

int main(void){
    char *string;
    element now;
    char ch;
    int i=0, len, count=0;
    StackType s;

    init_stack(&s);

    puts("Enter the string : ");
    gets(string);
    
   return 0;
}
