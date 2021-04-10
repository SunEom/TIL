#include <stdio.h>

#define MAX_STACK_SIZE 100

typedef struct {
	int top;
	int data[MAX_STACK_SIZE];
}StackType;

void init(StackType* s) {
	s->top = -1;
}

void push(StackType* s, int item) {
	s->data[++s->top] = item;
}

int pop(StackType* s) {
	return s->data[s->top--];
}

int main(void) {
	int num , item;
	StackType s;
	init(&s);
	printf("정수 배열의 크기 : ");
	scanf("%d", &num);
	printf("정수를 입력하시오 : ");
	for (int i = 0; i < num; i++) {
		scanf("%d", &item);
		push(&s, item);
	}
	printf("반전된 정수 배열 : ");
	for (int i = 0; i < num; i++) 
		printf("%d ", pop(&s));
	return 0;
}