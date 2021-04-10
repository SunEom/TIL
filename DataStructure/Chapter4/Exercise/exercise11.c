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
	int max = 1;
	char str[20];
	char ch;
	StackType s;
	init(&s);

	printf("수식 : ");
	scanf("%s",str);
	printf("괄호 수 : ");
	for (int i = 0; i < strlen(str); i++) {
		ch = str[i];
		if (ch == '(') {
			push(&s, max);
			printf("%d ", max++);
		}
		else
			printf("%d ", pop(&s));
	}
	printf("\n");
	return 0;
}