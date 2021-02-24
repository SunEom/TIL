#include <stdio.h>
#include <stdlib.h>
#define MAX_STACK_SIZE 10

typedef int element;
typedef struct {
	int top;
	element stack[MAX_STACK_SIZE];
}StackType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_stack(StackType* s) {
	s->top = -1;
}

int is_full(StackType* s) {
	return s->top == MAX_STACK_SIZE - 1;
}

int is_empty(StackType* s) {
	return s->top == -1;
}

void push(StackType* s, element item) {
	if (is_full(s)) error("Stack over flow");
	s->stack[++(s->top)] = item;
}

element pop(StackType* s) {
	if (is_empty(s)) error("Stack is empty");
	return s->stack[(s->top)--];
}

int main(void) {
	StackType s1, s2;
	int num;
	int op;

	init_stack(&s1);
	init_stack(&s2);

	while (1) {
		printf("Select option: 1. input 2.ouput\n");
		scanf("%d", &op);
		if (op == 1) {
			printf("Enter the number: ");
			scanf("%d", &num);
			push(&s1, num);
			printf("Now queue status : ");
			for (int i = 0; i <= s1.top; i++)
				printf("%d ", s1.stack[i]);
			printf("\n");
		}
		else if (op == 2) {
			while (!is_empty(&s2))
				pop(&s2);

			while (!is_empty(&s1))
				push(&s2, pop(&s1));

			printf("Removed item : %d\n", pop(&s2));

			while (!is_empty(&s1))
				pop(&s1);
			
			while (!is_empty(&s2))
				push(&s1, pop(&s2));

			printf("Now queue status : ");
			for (int i = 0; i <= s1.top; i++)
				printf("%d ", s1.stack[i]);
			printf("\n");
		}
		else 
			continue;
	}
	return 0;
}