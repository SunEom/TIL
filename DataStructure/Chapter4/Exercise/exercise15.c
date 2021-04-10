#include <stdio.h>
#include <math.h>
#define MAX_STACK_SIZE 100
#define MAZE_SIZE 6

char maze[MAZE_SIZE][MAZE_SIZE] = {
	{'1','1','1','1','1','1'},
	{'0','0','1','0','0','1'},
	{'1','0','0','0','1','1'},
	{'1','0','1','0','1','1'},
	{'1','0','1','0','0','0'},
	{'1','1','1','1','1','1'},
};

typedef struct {
	short r; 
	short c;
}element;

typedef struct {
	int top;
	element data[MAX_STACK_SIZE];
}StackType;

void init(StackType* s) {
	s->top = -1;
}

void push_loc(StackType* s, int r, int c) {
	element p = { r,c };
	if (r < 0 || c < 0) return;
	if (maze[r][c] == '0')
		s->data[++s->top] = p;
}

element pop(StackType* s) {
	return s->data[s->top--];
}

element peek(StackType* s) {
	return s->data[s->top];
}

int is_empty(StackType* s) {
	return s->top == -1;
}

int main(void) {
	StackType* s;
	int r, c;
	element here = { 1,0 };
	init(&s);

	while (!(here.r == 4 && here.c == 5)) {
		r = here.r; c = here.c;
		printf("(%d, %d) -> ", r, c);
		maze[r][c] = '.';
		push_loc(&s, r + 1, c);
		push_loc(&s, r - 1, c);
		push_loc(&s, r , c + 1);
		push_loc(&s, r, c - 1);
		if (is_empty(&s)) {
			printf("Fail\n");
			return 0;
		}
		else
			here = pop(&s);
	}
	printf("(%d, %d)", 4, 5);
	return 0;
}