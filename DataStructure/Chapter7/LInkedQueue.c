#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct QueueNode {
	element data;
	struct QueueNode* link;
}QueueNode;

typedef struct {
	QueueNode* front, * rear;
}LinkedQueueType;

int is_empty(LinkedQueueType* q) {
	return q->front == NULL && q->rear == NULL;
}

void init(LinkedQueueType* q) {
	q->front = q->rear = NULL;
}

void enqueue(LinkedQueueType* q, element value) {
	QueueNode* temp = (QueueNode*)malloc(sizeof(QueueNode));
	temp->data = value;
	temp->link = NULL;
	if (is_empty(q)) {
		q->front = temp;
		q->rear = temp;
	}
	else {
		q->rear->link = temp;
		q->rear = temp;
	}
}

element dequeue(LinkedQueueType* q) {
	QueueNode* temp = q->front;
	element item;
	if (is_empty(q)) {
		fprintf(stderr, "Queue is empty");
		exit(1);
	}
	else {
		item = temp->data;
		q->front = q->front->link;
		if (q->front == NULL) q->rear == NULL;
		free(temp);
		return item;
	}
}

void print_queue(LinkedQueueType* q) {
	for (QueueNode* p = q->front; p; p = p->link)
		printf("%d->", p->data);
	printf("NULL\n");
}

int main(void) {
	LinkedQueueType queue;
	init(&queue);

	enqueue(&queue, 1); print_queue(&queue);
	enqueue(&queue, 2); print_queue(&queue);
	enqueue(&queue, 3); print_queue(&queue);
	dequeue(&queue); print_queue(&queue);
	dequeue(&queue); print_queue(&queue);
	dequeue(&queue); print_queue(&queue);
	return 0;
}