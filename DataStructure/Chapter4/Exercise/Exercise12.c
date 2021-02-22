#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#define MAX_STACK_SIZE 100

typedef char element;
typedef struct {
    int top;
    element stack[MAX_STACK_SIZE];
} StackType;

void init_stack(StackType* s) {
    s->top = -1;
}

void push(StackType* s, element item) {
    s->stack[++(s->top)] = item;
}

element pop(StackType* s) {
    return s->stack[(s->top)--];
}

element peek(StackType* s) {
    return s->stack[(s->top)];
}

int main(void) {
    char string[20];
    element now;
    char ch;
    int i = 0, len, count = 0;
    StackType s;

    init_stack(&s);

    printf("Enter the string : ");
    gets(string);

    len = strlen(string);
    for (i = 0; i < len; i++) {
        ch = string[i];
        if (s.top == -1)
            push(&s, tolower(ch));
        else {
            if (peek(&s) == tolower(ch))
                push(&s, tolower(ch));
            else {
                while (s.top != -1) {
                    now = pop(&s);
                    count++;
                }
                printf("%d%c", count, now);
                push(&s, tolower(ch));
                count = 0;
            }
        }
    }
    while (s.top != -1) {
        now = pop(&s);
        count++;
    }
    printf("%d%c", count, now);

    return 0;
}
