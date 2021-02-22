#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_STACK_SIZE 100

typedef int element;
typedef struct{
    int top;
    element stack[MAX_STACK_SIZE];
} StackType;

void init_stack(StackType *s){
    s->top = -1;
}

void push(StackType *s, element item){
    s->stack[++(s->top)] = item ;
}

element pop(StackType *s){
    return s->stack[(s->top)--];
}

int main(void){
    char ch;
    char *string ="((((()";
    int i,len = strlen(string);
    int count = 0;
    StackType s;

    init_stack(&s);

    for (i=0; i<len ; i++){
        ch = string[i];
        if( ch == '('){
            push(&s,++count);
            printf("%d ",count);
        } else if( ch ==')'){
            printf("%d ", pop(&s));
        }
    }
    
    return 0;
}