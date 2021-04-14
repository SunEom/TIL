#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	element data[MAX_QUEUE_SIZE];
	int front, rear;
}QueueType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_queue(QueueType* q) {
	q->front = q->rear = 0;
}

void print_queue(QueueType* q) {
	for (int i = 0; i < MAX_QUEUE_SIZE; i++) {
		if (i <= q->front || i > q->rear)
			printf(" | ");
		else printf("%d | ", q->data[i]);
	}
	printf("\n");
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

int is_empty(QueueType* q) {
	return q->front == q->rear;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) error("Queue is full");
	else {
		q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
		q->data[q->rear] = item;
	}
}

element dequeue(QueueType* q) {
	if (is_empty(q)) error("Queue is empty");
	else {
		q->front = (q->front + 1) % MAX_QUEUE_SIZE;
		return q->data[q->front];
	}
}

int main(void) {
	int item = 0;
	QueueType q;
	init_queue(&q);

	enqueue(&q, 10); print_queue(&q);
	enqueue(&q, 20); print_queue(&q);
	enqueue(&q, 30); print_queue(&q);

	item = dequeue(&q); print_queue(&q);
	item = dequeue(&q); print_queue(&q);
	item = dequeue(&q); print_queue(&q);
	return 0;
}
