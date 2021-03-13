#include <stdio.h>
#include <stdlib.h>

#define TRUE 1
#define FALSE 0
#define MAX_VERTICES 100

int in_degreee[MAX_VERTICES];

typedef struct GraphNode{
	int vertex;
	struct GraphNode* link;
}GraphNode;

typedef struct {
	int n;
	GraphNode* adj_list[MAX_VERTICES];
}GraphType;

void graph_init(GraphType* g) {
	g->n = 0;
	for (int i = 0; i < MAX_VERTICES; i++)
		g->adj_list[i] = NULL;
}

void insert_vertex(GraphType* g, int v) {
	if (g->n + 1 > MAX_VERTICES) {
		fprintf(stderr, "그래프 : 정점의 개수 오류\n");
		return;
	}
	g->n++;
}

void insert_edge(GraphType* g, int u, int v) {
	if (u >= g->n || v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = v;
	node->link = g->adj_list[u];
	g->adj_list[u] = node;
}

#define MAX_STACK_SIZE 100

typedef int element;
typedef struct {
	int top;
	element stack[MAX_STACK_SIZE];
}StackType;

void stack_init(StackType* s) {
	s->top = -1;
}

int is_empty(StackType* s) {
	return s->top == -1;
}

int is_full(StackType* s) {
	return s->top + 1 == MAX_STACK_SIZE;
}

void push(StackType* s, element item) {
	if (is_full(s)) {
		fprintf(stderr, "stack overflow\n");
		exit(1);
	}
	s->stack[++s->top] = item;
}

element pop(StackType* s) {
	if (is_empty(s)) {
		fprintf(stderr, "stack is empty\n");
		exit(1);
	}
	return s->stack[s->top--];
}

void topo_sort(GraphType* g) {

	for (int i = 0; i < g->n; i++) {
		in_degreee[i] = 0;
	}

	for (int i = 0; i < g->n; i++) {
		for (int j = 0; j < g->n; j++) {
			if (j == i) continue;
			for(GraphNode*p = g->adj_list[j];p;p=p->link)
				if(p->vertex == i)
		}
	}
}