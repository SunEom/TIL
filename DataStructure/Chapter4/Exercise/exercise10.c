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
	printf("���� �迭�� ũ�� : ");
	scanf("%d", &num);
	printf("������ �Է��Ͻÿ� : ");
	for (int i = 0; i < num; i++) {
		scanf("%d", &item);
		push(&s, item);
	}
	printf("������ ���� �迭 : ");
	for (int i = 0; i < num; i++) 
		printf("%d ", pop(&s));
	return 0;
}