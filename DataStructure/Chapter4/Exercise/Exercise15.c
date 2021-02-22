#include <stdio.h>
#include <stdlib.h>
#define MAZE_SIZE 6
#define MAX_STACK_SIZE 100


typedef struct {
	int r;
	int c;
} element;
typedef struct {
	int top;
	element stack[MAX_STACK_SIZE];
} StackType;

char maze[MAZE_SIZE][MAZE_SIZE] = {
	{'1','1','1','1','1','1'},
	{'e','0','0','0','0','1'},
	{'1','0','1','0','1','1'},
	{'1','1','1','0','0','x'},
	{'1','1','1','0','1','1'},
	{'1','1','1','1','1','1'},
};

element here = { 1,0 }, entry = { 1,0 }, ex = { 3,5 };

int is_empty(StackType* s) {
	if (s->top == -1) return 1;
	else return 0;
}


int is_full(StackType* s) {
	if (s->top == MAX_STACK_SIZE - 1) return 1;
	else return 0;
}

void init_stack(StackType* s) {
	s->top = -1;
}

void push(StackType* s, element item) {
	s->stack[++(s->top)] = item;
}

element pop(StackType* s) {
	return s->stack[(s->top)--];
}

element peek(StackType* s) {
	return s->stack[(s->top)];
}

void push_loc(StackType* s, int r, int c) {
	if (r < 0 || c < 0) return;
	if (maze[r][c] != '1' && maze[r][c] != '.') {
		element tmp;
		tmp.r = r;
		tmp.c = c;
		push(s, tmp);
	}
} 

void maze_print(char maze[MAZE_SIZE][MAZE_SIZE]) {
	for (int r = 0; r < MAZE_SIZE; r++) {
		for (int c = 0; c < MAZE_SIZE; c++)
			printf("%c ", maze[r][c]);
		printf("\n");
	}
	printf("\n\n");
}

int main(void) {
	int r, c;
	StackType s;
	init_stack(&s);

	element road[MAZE_SIZE * MAZE_SIZE];
	int road_index = 0;
	here = entry;
	while (maze[here.r][here.c] != 'x') {
		r = here.r;
		c = here.c;
		maze[r][c] = '.';
		road[road_index].r = r;
		road[road_index++].c = c;
		maze_print(maze);
		push_loc(&s, r - 1, c);
		push_loc(&s, r + 1, c);
		push_loc(&s, r, c - 1);
		push_loc(&s, r, c + 1);
		if (is_empty(&s)) {
			printf("Fail\n");
			return;
		}
		else
			here = pop(&s);
	}
	printf("Success!\n\n");

	printf("Road\n\n");
	for (int i = 0; i < road_index; i++) {
		printf("(%d, %d) -> ",road[i].r,road[i].c);
	}
	printf("(%d, %d)\n", ex.r, ex.c);
	return 0;
}