#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char element;
typedef struct{
    int top;
    int capacity;
    element *data;
} StackType;

void init_stack(StackType *s){
    s->top =-1;
    s->capacity =1;
    s->data = (element *)malloc(s->capacity * sizeof(element));
}

int is_empty(StackType *s){
    if(s->top == -1) return 1;
    else return 0;
}

int is_full(StackType *s){
    if(s->top == s->capacity-1) return 1;
    else return 0;
}

void push(StackType *s , element e){
    if(is_full(s)){
        s->capacity*=2;
        s->data = (element *)realloc(s->data, s->capacity * sizeof(element));
    }
    s->data[++(s->top)] = e;
}

element pop(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty!\n");
        exit(1);
    }
    return s->data[(s->top)--];
}

element peek(StackType *s){
    if(is_empty(s)){
        fprintf(stderr,"Stack is empty!\n");
        exit(1);
    }
    return s->data[(s->top)];
}

int check_matching(const char *in){
    StackType s;
    char ch, open_ch;
    int i, n = strlen(in);
    init_stack(&s);

    for(i=0;i<n;i++){
        ch = in[i];
        switch(ch){
            case '(': case '{': case '[':
                push(&s,ch);
                break;
            case ')': case '}': case ']':
                if(is_empty(&s)) return 0;
                else {
                    open_ch = pop(&s);
                    if((open_ch == '(' && ch!=')')||(open_ch == '{' && ch !='}')||(open_ch == '[' && ch !=']')) return 0;
                    break;
                }
        }
    }

    if(!is_empty(&s)) return 0;
    return 1;
}

int main(void){
    char *p = "{ A[(i+1)]=0; }";
    if(check_matching(p))
        printf("%s Matching Check success!\n",p);
    else 
        printf("%s Matching Check fail!\n",p);
    return 0;
}