#include <stdio.h>
#include <stdlib.h>
#define MAX_STACK_SIZE 100

typedef int element;
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

int size(StackType* s) {
	return (s->top) + 1;
}

int main(void) {
	StackType s;

	init_stack(&s);

	printf("%d \n", size(&s));
	push(&s, 1);
	printf("%d \n", size(&s));
	push(&s, 1);
	printf("%d \n", size(&s));
	push(&s, 1);
	printf("%d \n", size(&s));
	pop(&s);
	printf("%d \n", size(&s));
	pop(&s);
	printf("%d \n", size(&s));
	pop(&s);
	printf("%d \n", size(&s)); 
	return 0;
}