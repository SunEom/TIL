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
	StackType s;
	char str[20];
	char ch;

	init(&s);

	printf("문자열을 입력하시오 : ");
	scanf("%s", str);
	for (int i = 0; i < strlen(str); i++) {
		if (is_empty(&s) || peek(&s) == str[i] || abs(peek(&s)-str[i]) == 32)
			push(&s, str[i]);
		else {
			ch = peek(&s);
			if (s.top == 0) printf("%c", ch);
			else printf("%d%c", s.top+1, ch);
			while (!is_empty(&s))
				pop(&s);	
			push(&s, str[i]);
		}
	}
	ch = peek(&s);
	if (s.top == 0) printf("%c", ch > 'z' ? ch-32 : ch);
	else printf("%d%c", s.top + 1, ch > 'z' ? ch - 32 : ch);
	while (!is_empty(&s))
		pop(&s);

	return 0;
}