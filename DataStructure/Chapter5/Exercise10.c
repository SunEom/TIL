#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 4

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

element peek(QueueType* q) {
	if (is_empty(q)) error("Queue is empty");
	return q->data[(q->front + 1) % MAX_QUEUE_SIZE];
}


int main(void) {
	int num, result;
	QueueType queue;
	init_queue(&queue);
	enqueue(&queue, 0);
	enqueue(&queue, 1);

	printf("F(x) is fibonacci series\n");
	printf("input x : ");
	scanf("%d", &num);

	if (num < 0) error("input error!");
	else if (num == 0) result = 0;
	else if (num == 1) result = 1;
	else {
		for (int i = 1; i < num; i++) {
			int tmp = dequeue(&queue) + peek(&queue);
			enqueue(&queue, tmp);
		}
		result = queue.data[queue.rear];
	}

	printf("Result : %d\n", result);
	return 0;
}