#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#define MAX_DEQUE_SIZE 20

typedef struct {
	int processing_time;

}element;
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

void add_front(DequeType* d, element item) {
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
	if (is_empty(d))error("Deque is empty");
	d->front = (d->front + 1) % MAX_DEQUE_SIZE;
	return d->data[d->front];
}

element delete_rear(DequeType* d) {
	if (is_empty(d)) error("Deque is empty");
	element item = d->data[d->rear];
	d->rear = (d->rear - 1 + MAX_DEQUE_SIZE) % MAX_DEQUE_SIZE;
	return item;
}

int get_count(DequeType* d) {
	return (d->rear - d->front + MAX_DEQUE_SIZE) % MAX_DEQUE_SIZE;
}

char max_num(int a, int b, int c) {
	if (a >= b && a >= c) return 'A';
	else if (b >= a && b >= c) return 'B';
	else if (c >= a && c >= b) return 'C';
}

char min_num(int a, int b, int c) {
	if (a <= b && a <= c) return 'A';
	else if (b <= a && b <= c) return 'B';
	else if (c <= a && c <= b) return 'C';
}

int main(void) {
	DequeType d1, d2, d3;
	int count1, count2, count3;
	init_deque(&d1);
	init_deque(&d2);
	init_deque(&d3);
	int minute = 0;
	int a_processing_time = 0;
	int b_processing_time = 0;
	int c_processing_time = 0;

	srand(time(NULL));

	while (minute < 100) {
		element new_process;
		new_process.processing_time = rand() % 3 + 1;
		count1 = get_count(&d1);
		count2 = get_count(&d2);
		count3 = get_count(&d3);
		char ch = min_num(count1, count2, count3);
		switch (ch) {
		case 'A':
			printf("Task is assigned to A. %d minutes left\n",new_process.processing_time);
			add_rear(&d1, new_process);
			break;
		case 'B':
			printf("Task is assigned to B. %d minutes left\n", new_process.processing_time);
			add_rear(&d2, new_process);
			break;
		case 'C':
			printf("Task is assigned to C. %d minutes left\n", new_process.processing_time);
			add_rear(&d3, new_process);
			break;
		}

		if (a_processing_time > 0 ) {
			a_processing_time--;
			printf("A processor work... %d minute left\n", a_processing_time);
		}
		else {
			if (!is_empty(&d1)) {
				a_processing_time = delete_front(&d1).processing_time;
			}
			else {
				if (get_count(&d2) >= get_count(&d3) && get_count(&d2) >= 1) {
					add_rear(&d1, delete_rear(&d2));
					printf("A processor get from B\n");
					a_processing_time = delete_front(&d1).processing_time;
					printf("A processor work... %d minute left\n");
				}
				else if (get_count(&d3) >= get_count(&d2) && get_count(&d3) >= 1) {
					add_rear(&d1, delete_rear(&d3));
					printf("A processor get from C\n");
					a_processing_time = delete_front(&d1).processing_time;
					printf("A processor work... %d minute left\n");
				}
			}
		}

		if (b_processing_time > 0) {
			b_processing_time--;
			printf("B processor work... %d minute left\n", b_processing_time);
		}
		else {
			if (!is_empty(&d2)) {
				b_processing_time = delete_front(&d2).processing_time;
			}
			else {
				if (get_count(&d1) >= get_count(&d3) && get_count(&d1) >= 1) {
					add_rear(&d2, delete_rear(&d1));
					printf("B processor get from A\n");
					b_processing_time = delete_front(&d2).processing_time;
					printf("B processor work... %d minute left\n");
				}
				else if (get_count(&d3) >= get_count(&d1) && get_count(&d3) >= 1) {
					add_rear(&d2, delete_rear(&d3));
					printf("B processor get from C\n");
					b_processing_time = delete_front(&d2).processing_time;
					printf("B processor work... %d minute left\n");
				}
			}
		}

		if (c_processing_time > 0) {
			c_processing_time--;
			printf("C processor work... %d minute left\n", c_processing_time);
		}
		else {
			if (!is_empty(&d3)) {
				c_processing_time = delete_front(&d3).processing_time;
			}
			else {
				if (get_count(&d1) >= get_count(&d2) && get_count(&d1) >= 1) {
					add_rear(&d3, delete_rear(&d1));
					printf("C processor get from A\n");
					c_processing_time = delete_front(&d3).processing_time;
					printf("C processor work... %d minute left\n");
				}
				else if (get_count(&d2) >= get_count(&d1) && get_count(&d2) >= 1) {
					add_rear(&d3, delete_rear(&d2));
					printf("C processor get from B\n");
					c_processing_time = delete_front(&d3).processing_time;
					printf("C processor work... %d minute left\n");
				}
			}
		}
		minute++;
		printf("A processing time : %d\n",a_processing_time);
		printf("B processing time : %d\n",b_processing_time);
		printf("C processing time : %d\n",c_processing_time);
		printf("\n\n");
	}
	printf("Time over!\n");
	return 0;
}