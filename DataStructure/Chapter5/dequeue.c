#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
}DequeType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_deque(DequeType* dq) {
	dq->front = dq->rear = 0;
}

int is_empty(DequeType* dq) {
	return dq->front == dq->rear;
}

int is_full(DequeType* dq) {
	return (dq->rear + 1) % MAX_QUEUE_SIZE == dq->front;
}

void print_deque(DequeType* dq) {
	int i = dq->front;
	if (is_empty(dq)) error("Deque is empty");
	else {
		do {
			i = (i + 1) % MAX_QUEUE_SIZE;
			printf("%d | ", dq->data[i]);
			if (i == dq->rear) break;
		} while (i != dq->front);
		printf("\n");
	}
}

void add_front(DequeType* dq, element item) {
	if (is_full(dq)) error("Deque is full");
	else {
		dq->data[dq->front] = item;
		dq->front = (dq->front - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
	}
}

void add_rear(DequeType* dq, element item) {
	if (is_full(dq)) error("Deque is full");
	else {
		dq->rear = (dq->rear + 1) % MAX_QUEUE_SIZE;
		dq->data[dq->rear] = item;
	}
}

element delete_front(DequeType* dq) {
	if (is_empty(dq))error("Deque is empty");
	else {
		dq->front = (dq->front + 1) % MAX_QUEUE_SIZE;
		return dq->data[dq->front];
	}
}

element delete_rear(DequeType* dq) {
	if (is_empty(dq)) error("Deque is empty");
	else {
		int prev = dq->rear;
		dq->rear = (dq->rear - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
		return dq->data[prev];
	}
}

element get_front(DequeType* dq) {
	if (is_empty(dq)) error("Deque is emprty");
	else {
		return dq->data[(dq->front + 1) % MAX_QUEUE_SIZE];
	}
}

element get_rear(DequeType* dq) {
	if (is_empty(dq)) error("Deque is emprty");
	else {
		return dq->data[dq->rear];
	}
}

int main(void) {
	DequeType dq;
	init_deque(&dq);
	for (int i = 0; i < 3; i++) {
		add_front(&dq, i);
		print_deque(&dq);
	}
	for (int i = 0 ; i < 3; i++) {
		delete_rear(&dq);
		print_deque(&dq);
	}
	return 0;
}