#include <stdio.h>
#include <stdlib.h>	
#define MAX_QUEUE_SIZE 20

typedef int element;
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
	if (is_full(q)) error("Deque overflow");
	q->data[q->front] = item;
	q->front = (q->front - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
}

void add_rear(DequeType* q, element item) {
	if (is_full(q)) error("Deque overflow");
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->data[q->rear] = item;
}

element delete_front(DequeType* q) {
	if (is_empty(q)) error("Deque underflow");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->data[q->front];
}

element delete_rear(DequeType* q) {
	if (is_empty(q)) error("Deque underflow");
	int prev = q->rear;
	q->rear = (q->rear - 1 + MAX_QUEUE_SIZE) % MAX_QUEUE_SIZE;
	return q->data[prev];
}

int get_size(DequeType* q) {
	int size = 0;
	int i = q->front;
	if (is_empty(q)) return size;
	do {
		i = (i + 1) % MAX_QUEUE_SIZE;
		size++;
		if (i == q->rear) break;
	} while (i != q->front);
	return size;
}

char min_size_deque(DequeType* a, DequeType* b, DequeType* c) {
	int size_a = get_size(a);
	int size_b = get_size(b);
	int size_c = get_size(c);
	int min = min(size_a, size_b, size_c);
	if (min == size_a) return 'a';
	else if (min == size_b) return 'b';
	else return 'c';
}

void set_time(DequeType* q, int* time) {
	if (is_empty(q)) return;
	if (*time != 0) return;
	*time = delete_front(q);
}

void print_status(char c, int time) {
	if (time)
		printf("%c CPU is working.. %d seconds remain...\n", c, time);
	else
		printf("%c CPU has no task\n",c);
}

int main(void) {
	DequeType a, b, c;
	int time_a = 0;
	int time_b = 0;
	int time_c = 0;

	init_deque(&a);
	init_deque(&b);
	init_deque(&c);
	
	srand(time(NULL));

	add_front(&a, 10);
	for (;;) {

		if (rand() % 10 < 2) {
			add_rear(&a, (rand() % 5) + 1);
			printf("Add task to a CPU\n");
		}

		if (rand() % 10 < 2) {
			add_rear(&b, (rand() % 5) + 1);
			printf("Add task to b CPU\n");
		}

		if (rand() % 10 < 2) {
			add_rear(&c, (rand() % 5) + 1);
			printf("Add task to c CPU\n");
		}

		set_time(&a, &time_a);
		set_time(&b, &time_b);
		set_time(&c, &time_c);

		if (time_a == 0) {
			if (!is_empty(&b)) {
				set_time(&b, &time_a);
				printf("a CPU receive a task from b CPU\n");
			}
			else if (!is_empty(&c)) {
				set_time(&c, &time_a);
				printf("a CPU receive a task from c CPU\n");
			}
		}

		if (time_b == 0) {
			if (!is_empty(&c)) {
				set_time(&c, &time_b);
				printf("b CPU receive a task from c CPU\n");
			}
			else if (!is_empty(&a)) {
				set_time(&a, &time_b);
				printf("b CPU receive a task from a CPU\n");
			}
		}

		if (time_c == 0) {
			if (!is_empty(&a)) {
				set_time(&a, &time_c);
				printf("c CPU receive a task from a CPU\n");
			}
			else if (!is_empty(&b)) {
				set_time(&b, &time_c);
				printf("c CPU receive a task from b CPU\n");
			}
		}

		print_status('a', time_a);
		print_status('b', time_b);
		print_status('c', time_c);

		time_a = time_a > 0 ? time_a - 1 : 0;
		time_b = time_b > 0 ? time_b - 1 : 0;
		time_c = time_c > 0 ? time_c - 1 : 0;


		if (is_empty(&a) && is_empty(&b) && is_empty(&c) && time_a ==0 & time_b == 0 && time_c == 0) break;
		printf("\n\n");
	}
	return 0;

}