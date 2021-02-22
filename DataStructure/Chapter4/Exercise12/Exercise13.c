#include <stdio.h>
#include <stdlib.h>
#include <string.h>
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
	char num[20];
	char ch;
	int i,len;
	StackType s;

	init_stack(&s);

	printf("Enter the integer : ");
	gets(num);
	
	len = strlen(num);
	for (i = 0; i < len; i++) {
		ch = num[i];
		if (s.top == -1) {
			push(&s, ch);
		}
		else {
			if (peek(&s) == ch) continue;
			else {
				printf("%c", pop(&s));
				push(&s, ch);
			}
		}
	}
	printf("%c", pop(&s));

	return 0;
}