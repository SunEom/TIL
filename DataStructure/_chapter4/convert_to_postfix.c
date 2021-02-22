#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_STACK_SIZE 100

typedef char element;
typedef struct {
    element stack[MAX_STACK_SIZE];
    int top;
} StackType;

void init_stack(StackType *s){
    s->top =-1;
}

int is_empty(StackType *s){
    if(s->top == -1) return 1;
    else return 0;
}

int is_full(StackType *s){
    if(s->top == MAX_STACK_SIZE-1) return 1;
    else return 0;
}

void push(StackType *s, element item){
    if(is_full(s)){
        fprintf(stderr,"Stack over flow!\n");
        exit(1);
    }
    s->stack[++(s->top)] = item;
}

element pop(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty!\n");
        exit(1);
    }
    return s->stack[(s->top)--];
}

element peek(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty!\n");
        exit(1);
    }
    return s->stack[(s->top)];
}

int prec (char op){
    switch(op){
        case '(': case ')' : return 0;
        case '+': case '-' : return 1;
        case '*': case '/' : return 2;
    }
    return -1;
}

void infix_to_postfix(char exp[]){
    int i=0;
    char ch, top_op;
    int len = strlen(exp);
    StackType s;

    init_stack(&s);
    for( i=0; i<len ; i++){
        ch = exp[i];
        switch(ch){
        case '+' : case '-': case '*': case '/':
            while(!is_empty(&s) && prec(peek(&s))>=prec(ch)){
                printf("%c",pop(&s));
            }
            push(&s,ch);
            break;
        case '(':
            push(&s,ch);
            break;
        case ')':
            while(peek(&s) != '('){
                printf("%c",pop(&s));
            }
            pop(&s);
            break;
        default :
            printf("%c",ch);
            break;
        }
    }
    while(!is_empty(&s)){
        printf("%c",pop(&s));
    }
}

int main(void){
    char *s ="a+b-c+d";
    printf("Infix : %s \n",s);
    printf("Postfix : ");
    infix_to_postfix(s);
    printf("\n");
    return 0;
}