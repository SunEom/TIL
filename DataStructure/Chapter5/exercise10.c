#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int  front, rear;
	element data[MAX_QUEUE_SIZE];
}QueueType;

void init_queue(QueueType* q) {
	q->front = q->rear = 0;
}

int is_empty(QueueType* q) {
	return q->front == q->rear;
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) {
		printf("Queue is full\n");
		return;
	}
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->data[q->rear] = item;
}

element dequeue(QueueType* q) {
	if (is_empty(q)) {
		printf("Queue is empty\n");
		exit(1);
	}
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

int fib(int num) {
	if (num == 0)
		return 0;
	if (num == 1)
		return 1;
	QueueType q;
	int temp;
	init_queue(&q);
	enqueue(&q, 0);
	enqueue(&q, 1);
	for (int i = 1; i < num; i++) {
		int a = dequeue(&q);
		int b = dequeue(&q);
		temp = a + b;
		enqueue(&q, b);
		enqueue(&q, temp);
	}
	return temp;
}


int main(void) {
	for (int i = 0; i < 20; i++)
		printf("Fibonacci(%d) : %d \n", i, fib(i));
	return 0;
}
