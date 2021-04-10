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
	char str[20];
	char ch;
	StackType s;
	init(&s);

	printf("정수를 입력해주세요 : ");
	scanf("%s", str);
	push(&s, str[0]);
	for (int i = 1 ; i < strlen(str); i++) {
		ch = str[i];
		if (peek(&s) == ch) continue;
		else {
			printf("%c", pop(&s));
			push(&s, ch);
		}
	}
	printf("%c", pop(&s));

	return 0;
}