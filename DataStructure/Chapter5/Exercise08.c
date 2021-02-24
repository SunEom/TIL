#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
} QueueType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_queue(QueueType* q) {
	q->front = 0;
	q->rear = 0;
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

int is_empty(QueueType* q) {
	return q->rear == q->front;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) error("Queue over flow");
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->data[q->rear] = item;
}

element dequeue(QueueType* q) {
	if (is_empty(q)) error("Queue is empty");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

int get_count(QueueType* q) {
	return (q->rear + MAX_QUEUE_SIZE - q->front) % MAX_QUEUE_SIZE;
}

int main(void) {
	QueueType queue;
	init_queue(&queue);
	for (int i = 0; i < MAX_QUEUE_SIZE-1; i++) {
		enqueue(&queue, i);
		printf("Count : %d\n", get_count(&queue));
	}
	
	printf("\n\n");
	for (int i = 0; i < MAX_QUEUE_SIZE-1; i++) {
		dequeue(&queue);
		printf("Count : %d\n", get_count(&queue));
	}
	return 0;
}