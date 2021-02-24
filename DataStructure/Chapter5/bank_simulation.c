#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MAX_QUEUE_SIZE 10

typedef struct {
	int id;
	int arrival_time;
	int service_time;
} element;
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

void enqueue(QueueType *q, element item){
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
	return q->data[q->front+1];
}

int main(void) {
	int minutes = 60;
	int total_wait = 0;
	int total_customers = 0;
	int service_time = 0;
	int service_customer;
	QueueType queue;
	init_queue(&queue);

	srand(time(NULL));
	for (int clock = 0; clock < minutes; clock++) {
		printf("Now Time : %d \n", clock);
		if ((rand() % 10) < 3) {
			element customer; 
			customer.id = total_customers++;
			customer.arrival_time = clock;
			customer.service_time = rand() % 3 + 1;
			enqueue(&queue, customer);
			printf("Customer %d is arrived at %d. processing time : %d minutes\n", customer.id, customer.arrival_time, customer.service_time);
		}
		if (service_time > 0) {
			printf("Processing customer %d's task\n", service_customer);
			service_time--;
		}
		else {
			if (!is_empty(&queue)) {
				element customer = dequeue(&queue);
				service_customer = customer.id;
				service_time = customer.service_time;
				printf("Customer %d is processed at %d, Waiting time was %d minutes\n", customer.id, clock, clock - customer.arrival_time);
				total_wait += clock - customer.arrival_time;

			}
		}
	}
	printf("Total waiting time : %d\n", total_wait);
	return 0;
}