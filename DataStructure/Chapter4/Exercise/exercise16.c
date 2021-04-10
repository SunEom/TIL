#include <stdio.h>
#include <math.h>
#define MAX_STACK_SIZE 100

typedef struct {
	int top;
	char data[MAX_STACK_SIZE];
}StackType;

void init(StackType* s) {
	s->top = -1;
}

void push(StackType* s, int item) {
	s->data[++s->top] = item;
}

char pop(StackType* s) {
	return s->data[s->top--];
}

char peek(StackType* s) {
	return s->data[s->top];
}

int is_empty(StackType* s) {
	return s->top == -1;
}

int main(void) {
	StackType  s;
	char str[20];
	init(&s);
	printf("문자열을 입력해주세요 : ");
	scanf("%s", str);
	for (int i = 0; i < strlen(str) / 2; i++)
		push(&s, str[i]);
	for (int i = ceil(strlen(str) / 2.0); i < strlen(str); i++) {
		if (pop(&s) == str[i])
			continue;
		else {
			printf("회문이 아닙니다.\n");
			return 0;
		}
	}
	printf("회문입니다.\n");
	return 0;
}

