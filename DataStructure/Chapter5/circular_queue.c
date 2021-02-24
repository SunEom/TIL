#include <stdio.h>
#include <stdlib.h>
#define MAX_QUEUE_SIZE 5

typedef int element;
typedef struct {
	int front;
	int rear;
	element data[MAX_QUEUE_SIZE];
} QueueType;

//오류 함수
void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_queue(QueueType* q) {
	q->front = 0;
	q->rear = 0;
}

int is_full(QueueType* q) {
	if (((q->rear + 1) % MAX_QUEUE_SIZE) == q->front) return 1;
	else return 0;
}

int is_empty(QueueType* q) {
	if (q->rear == q->front) return 1;
	else return 0;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) error("Queue over stack!");
	q->data[++(q->rear)] = item;
}

element dequeue(QueueType* q) {
	if (is_empty(q)) error("Queue is empty!");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

void queue_print(QueueType* q) {
	printf("Queue (front = %d , rear = %d) : ", q->front, q->rear);
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
	QueueType q;
	element item;

	init_queue(&q);
	printf("--Data input--\n");
	while (!is_full(&q)) {
		printf("Input integer : ");
		scanf("%d", &item);
		enqueue(&q, item);
		queue_print(&q);
	}
	printf("Queue is full!\n\n");


	printf("--Data remove--\n");
	while (!is_empty(&q)) {
		item = dequeue(&q);
		printf("Removed element : %d\n", item);
		queue_print(&q);
	}
	printf("Queue is empty!\n");
	return 0;
}