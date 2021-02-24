#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
} DequeType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_deque(DequeType* d) {
	d->front = 0;
	d->rear = 0;
}

int is_full(DequeType* d) {
	if ((d->rear + 1) % MAX_QUEUE_SIZE == d->front) return 1;
	else return 0;
}

int is_empty(DequeType* d) {
	if (d->rear == d->front) return 1;
	else return 0;
}

void deque_print(DequeType* d) {
	printf("Deque (front = %d, rear = %d) : ", d->front, d->rear);
	if (!is_empty(d)) {
		int i = d->front;
		do {
			i = (i + 1) % MAX_QUEUE_SIZE;
			printf("%d | ", d->data[i]);
			if (i == d->rear)
				break;
		} while (i != d->front);
	}
	printf("\n");
}

void add_rear(DequeType* d, element item) {
	if (is_full(d)) error("Deque over flow");
	d->rear = (d->rear + 1) % MAX_QUEUE_SIZE;
	d->data[d->rear] = item;
}

void add_front(DequeType* d, element item) {
	if (is_full(d)) error("Deque over flow");
	d->data[(d->front)] = item;
	d->front = (d->front - 1+ MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
}

element delete_front(DequeType* d) {
	if (is_empty(d)) error("Deque is empty");
	d->front = (d->front + 1) % MAX_QUEUE_SIZE;
	return d->data[d->front];
}

element delete_rear(DequeType* d) {
	if (is_empty(d)) error("Deque is empty");
	element item = d->data[d->rear];
	d->rear = (d->rear - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
	return item;	
}

element get_front(DequeType* d) {
	if (is_empty(d)) error("Deque is empty");
	return d->data[d->front+1];
}

element get_rear(DequeType* d) {
	if (is_empty(d)) error("Deque is empty");
	return d->data[d->rear];
}

int main(void) {
	DequeType queue;
	
	init_deque(&queue);
	for (int i = 0; i < 3; i++) {
		add_front(&queue, i);
		deque_print(&queue);
	}

	for (int i = 0; i < 3; i++) {
		delete_rear(&queue);
		deque_print(&queue);
	}
	return 0;
}

