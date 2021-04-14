#include <stdio.h>
#include <stdlib.h>	
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
}QueueType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	return 0;
}

void init_queue(QueueType* q) {
	q->front = q->rear = 0;
}

int is_empty(QueueType* q) {
	return  q->front == q->rear;
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

void print_queue(QueueType* q) {
	int i=q->front;
	if (is_empty(q)) return;
	do {
		i = (i + 1) % MAX_QUEUE_SIZE;
		printf("%d | ", q->data[i]);
	} while (i != q->rear);
	printf("%d\n", i);
}

void enqueue(QueueType* q, element item) {
	if (is_full(q))error("Queue is full");
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
	QueueType q;
	element e;

	init_queue(&q);
	srand(time(NULL));
	for (int i = 0; i < 100; i++) {
		if (rand() % 5 == 0) {
			enqueue(&q, rand() & 100);
		}
		print_queue(&q);
		if (rand() % 10 == 0) {
			int data = dequeue(&q);
		}
		print_queue(&q);
	}
	return 0;
}