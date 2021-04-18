#include <stdio.h>
#include <stdlib.h>	
#define MAX_STACK_SIZE 100

typedef char element;
typedef struct {
	int top;
	element data[MAX_STACK_SIZE];
}StackType;

void init(StackType* s) {
	s->top = -1;
}

int is_empty(StackType* s) {
	return s->top == MAX_STACK_SIZE - 1;
}

int is_full(StackType* s) {
	return s->top == -1;
}

void push(StackType* s, element item) {
	if (is_full(s)) return;
	s->data[++s->top] = item;
}

element pop(StackType* s) {
	if (is_empty(s)) exit(1);
	return s->data[s->top--];
}

element peek(StackType* s) {
	if (is_empty(s)) exit(1);
	return s->data[s->top];
}


int prec(char* c) {
	if (c == "(" || c == ")") return 0;
	else if (c == "+" || c == "-") return 1;
	else if (c == "*" || c == "/") return 2;
	else return -1;
}

void infix_to_prefix(char exp[]) {
	StackType s;
	char top_op;
	init(&s);

	for (int i = 0; i < strlen(exp); i++) {
		char ch = exp[i];
		switch (ch) {
		case '+' : case '-' : case '*': case '/':
			while (!is_empty(&s) && (prec(peek(&s)) >= prec(ch))) printf("%c", pop(&s));
			push(&s, ch);
			break;
		case '(':
			push(&s, ch);
			break;
		case ')':
			top_op = pop(&s);
			while (top_op != '(') {
				printf("%c", top_op);
				top_op = pop(&s);
			}
			break;
		default:
			printf("%c", ch);
			break;
		}
	}
	while (!is_empty(&s)) printf("%c", pop(&s));
}

int main(void) {
	char* s = "(2+3)*4+9";
	printf("중위표시수식 : %s \n", s);
	printf("후위표시수식 : ");
	infix_to_prefix(s);
	printf("\n");
	return 0;
}

