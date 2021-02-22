#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_STACK_SIZE 100

typedef char element;
typedef struct {
	int top;
	element stack[MAX_STACK_SIZE];
}StackType;

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
	int i, len;
	char ch;
	char string[20];
	StackType s;

	init_stack(&s);
	printf("Enter the string : ");
	gets(string);

	len = strlen(string);
	for (i = 0; i < len / 2; i++)
		push(&s, string[i]);

	if (len % 2 == 0) {
		for (i = len / 2; i < len; i++) {
			ch = pop(&s);
			if (string[i] != ch) {
				printf("Not palindrome\n");
				return 0;
			}
		}
	}

	else {
		for (i = len / 2+1; i < len; i++) {
			ch = pop(&s);
			if (string[i] != ch) {
				printf("Not palindrome\n");
				return 0;
			}
		}
	}
	printf("Palindrome!\n");
	return 0;
}