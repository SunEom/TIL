#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX_ARRAY_SIZE 20

typedef struct {
	int key;
}element;

typedef struct {
	element data[MAX_ARRAY_SIZE];
	int array_size;
}QueueType;

QueueType* create() {
	return (QueueType*)malloc(sizeof(QueueType));
}

void init(QueueType* q) {
	q->array_size = 0;
}

int is_empty(QueueType* q) {
	return q->array_size == 0;
}

int is_full(QueueType* q) {
	return  q->array_size == MAX_ARRAY_SIZE;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) {
		fprintf(stderr, "Queue overflow\n");
		exit(1);
	}
	q->data[q->array_size++] = item;
}

element dequeue(QueueType* q) {
	element max;
	int index;
	if (is_empty(q)) {
		fprintf(stderr, "Queue is empty\n");
		exit(1);
	}
	max = q->data[0];
	index = 0;
	for (int i = 1; i < q->array_size; i++) {
		if (q->data[i].key > max.key) {
			max = q->data[i];
			index = i;
		}
	}

	for (int i = index; i+1 < q->array_size; i++)
		q->data[i] = q->data[i + 1];
	q->array_size--;
	return max;
}

int main(void) {
	QueueType* q = create();
	element e;
	init(q);

	srand(time(NULL));

	for (int i = 0; i < 10; i++) {
		e.key = rand() % 20 + 1;
		enqueue(q, e);
	}

	for (int i = 0; i < 10; i++)
		printf("%d ", q->data[i].key);

	printf("\n");
	for (int i = 0; i < 10; i++)
		printf("%d ", dequeue(q).key);
	
	return 0;
}