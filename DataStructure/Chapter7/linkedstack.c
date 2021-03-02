#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct StackNode {
	element data;
	struct StackNode* link;
}StackNode;

typedef struct {
	StackNode* top;
}LinkedStackType;

void init(LinkedStackType* s) {
	s->top = NULL;
}

int is_empty(LinkedStackType* s) {
	return s->top == NULL;
}

int is_full(LinkedStackType* s) {
	return 0;
}

void push(LinkedStackType* s, element value) {
	StackNode* newnode = (StackNode*)malloc(sizeof(StackNode));
	newnode->data = value;
	newnode->link = s->top;
	s->top = newnode;
}

void print_stack(LinkedStackType* s) {
	for (StackNode* p = s->top; p; p = p->link)
		printf("%d->", p->data);
	printf("NULL\n");
}

element pop(LinkedStackType* s) {
	if (is_empty(s)) {
		fprintf(stderr, "Stack is empty");
		exit(1);
	}
	else {
		StackNode* removed = s->top;
		element item = s->top->data;;
		s->top = s->top->link;
		free(removed);
		return item;
	}
}

element peek(LinkedStackType* s) {
	if (is_empty(s)) {
		fprintf(stderr, "Stack is empty");
		exit(1);
	}
	else {
		return s->top->data;
	}
}

int main(void) {
	LinkedStackType s;
	init(&s);
	push(&s, 1); print_stack(&s);
	push(&s, 2); print_stack(&s);
	push(&s, 3); print_stack(&s);
	pop(&s); print_stack(&s);
	pop(&s); print_stack(&s);
	pop(&s); print_stack(&s);
	return 0;
}