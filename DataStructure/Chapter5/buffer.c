#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
} QueueType;

//Error Function
void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_queue(QueueType* q) {
	q->front = 0;
	q->rear = 0;
}

int is_full(QueueType* q) {
	if ((q->rear + 1) % MAX_QUEUE_SIZE == q->front) return 1;
	else return 0;
}

int is_empty(QueueType* q) {
	if (q->rear == q->front)  return 1;
	else return 0;
}

void enqueue(QueueType* q,element item) {
	if (is_full(q)) error("Queue over flow");
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->data[q->rear] = item;
}

element dequeue(QueueType* q) {
	if (is_empty(q)) error("Queue is empty");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

void queue_print(QueueType* q) {
	printf("Queue (front = %d , rear = %d) : ",q->front,q->rear);
	if (!is_empty(q)) {
		int i = q->front;
		do {
			i = (i + 1) % MAX_QUEUE_SIZE;
			printf("%d | ", q->data[i]);
			if (i == q->rear)
				break;
		} while (i != q->front);
	}
	printf("\n");
}

int main(void) {
	QueueType queue;
	element item;

	init_queue(&queue);
	srand(time(NULL));

	for (int i = 0; i < 100; i++) {
		if (rand() % 5 == 0) {
			enqueue(&queue, rand() % 100);
		}
		queue_print(&queue);
		if (rand() % 10 == 0) {
			item = dequeue(&queue);
		}
		queue_print(&queue);
	}
	return 0;
}