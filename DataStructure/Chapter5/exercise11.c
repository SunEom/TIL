#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_QUEUE_SIZE 10

typedef char element;
typedef struct {
	int front, rear;
	element data[MAX_QUEUE_SIZE];
}DequeType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_deque(DequeType* q) {
	q->front = q->rear = 0;
}

int is_empty(DequeType* q) {
	return q->front == q->rear;
}

int is_full(DequeType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

void add_front(DequeType* q, element item) {
	if (is_full(q)) error("Deque is full");
	q->data[q->front] = item;
	q->front = (q->front - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
}

void add_rear(DequeType* q, element item) {
	if (is_full(q)) error("Deque is full");
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->data[q->rear] = item;
}

element delete_front(DequeType* q) {
	if (is_empty(q)) error("Deque is empty");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

element delete_rear(DequeType* q) {
	if (is_empty(q)) error("Deque is empty");
	int prev = q->rear;
	q->rear = (q->rear - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
	return  q->data[prev];
}



int is_palindrome(char* expr) {
	DequeType q;
	init_deque(&q);
	for (int i = 0; i < strlen(expr); i++) add_front(&q, expr[i]);
	for (int i = 0; i < strlen(expr)/2; i++) {
		char front = delete_front(&q);
		char rear = delete_rear(&q);
		if (front != rear) return 0;
	};
	return 1;
}


int main(void) {
	char str[MAX_QUEUE_SIZE - 1];
	do {
		printf("Input String : ");
		scanf("%s", str);
		if (strcmp(str, "q") == 0) break;
		if (is_palindrome(str)) {
			printf("%s is palindrome\n", str);
		}
		else {
			printf("%s is not palindrome\n", str);
		}
	} while (1);
	return 0;
}