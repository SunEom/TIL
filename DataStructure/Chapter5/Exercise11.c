#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_DEQUE_SIZE 20

typedef char element;
typedef struct {
	int front, rear;
	element data[MAX_DEQUE_SIZE];
}DequeType;

void init_deque(DequeType* d) {
	d->front = 0;
	d->rear = 0;
}

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

int is_full(DequeType* d) {
	return (d->rear + 1) % MAX_DEQUE_SIZE == d->front;
}

int is_empty(DequeType* d) {
	return d->rear == d->front;
}

void add_front(DequeType* d,element item) {
	if (is_full(d)) error("Deque over flow");
	d->data[d->front] = item;
	d->front = (d->front + MAX_DEQUE_SIZE - 1) % MAX_DEQUE_SIZE;
}

void add_rear(DequeType* d, element item) {
	if (is_full(d)) error("Deque over flow");
	d->rear = (d->rear + 1) % MAX_DEQUE_SIZE;
	d->data[d->rear] = item;
}

element delete_front(DequeType* d) {
	if (is_empty(d))error("No Palindrome");
	d->front = (d->front + 1) % MAX_DEQUE_SIZE;
	return d->data[d->front];
}

element delete_rear(DequeType* d) {
	if (is_empty(d)) error("No Palindrome");
	element item = d->data[d->rear];
	d->rear = (d->rear - 1 + MAX_DEQUE_SIZE) % MAX_DEQUE_SIZE;
	return item;
}

int main(void){
	DequeType deque;
	init_deque(&deque);
	char str[20];
	char fchar, rchar;
	printf("Enter the string : ");
	gets(str);

	for (int i = 0; i < strlen(str); i++)
		add_rear(&deque, str[i]);

	while (((deque.rear - deque.front + MAX_DEQUE_SIZE) % MAX_DEQUE_SIZE) > 1) {
		do {
			fchar = delete_front(&deque);
		} while (!(fchar >= 'a' && fchar <= 'z') && !(fchar >= 'A' && fchar <= 'Z'));
		do {
			rchar = delete_rear(&deque);
		} while (!(rchar >= 'a' && rchar <= 'z') && !(rchar >= 'A' && rchar <= 'Z'));
			
		if (fchar != rchar) {
			printf("Not pailndrome\n");
			return 0;
		}
	}
	printf("Pailndrome\n");
	return 0;
}