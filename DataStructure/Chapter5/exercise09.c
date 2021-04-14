#include <stdio.h>
#include <stdlib.h>	
#define MAX_STACK_SIZE 5

typedef int element;
typedef struct {
	int top;
	element data[MAX_STACK_SIZE];
}StackType;

typedef struct {
	StackType s1;
	StackType s2;
}QueueType;

void init_stack(StackType* s) {
	s->top = -1;
}

int is_empty(StackType* s) {
	return s->top == -1;
}

int is_full(StackType* s) {
	return s->top == MAX_STACK_SIZE - 1;
}

void push(StackType* s , element item) {
	if (is_full(s)) {
		printf("Stack is full\n");
		return;
	}
	s->data[++s->top] = item;
}

element pop(StackType* s) {
	if (is_empty(s)) {
		printf("Stack is empty\n");
		return -1000;
	}
	return s->data[s->top--];
}

void init_queue(QueueType* q) {
	init_stack(&q->s1);
	init_stack(&q->s2);
}

void enqueue(QueueType* q, element item) {
	push(&q->s1,item);
}

element dequeue(QueueType* q) {
	int result;
	while (!is_empty(&q->s1))
		push(&q->s2, pop(&q->s1));
	result = pop(&q->s2);
	while (!is_empty(&q->s2))
		push(&q->s1, pop(&q->s2));
	return result;
}

int main(void) {
	QueueType q;
	init_queue(&q);

	enqueue(&q, 1);
	enqueue(&q, 2);
	enqueue(&q, 3);
	printf("%d -> ", dequeue(&q));
	printf("%d -> ", dequeue(&q));
	printf("%d\n", dequeue(&q));
	return 0;
}
