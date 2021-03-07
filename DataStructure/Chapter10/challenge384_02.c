#include <stdio.h>
#include <stdlib.h>

#define MAX_VERTICES 50
#define TRUE 1
#define FALSE 0

typedef struct GraphNode {
	int vertex;
	struct GraphNode* link;
}GraphNode;

typedef struct {
	int n;
	GraphNode* adj_list[MAX_VERTICES];
}GraphType;

typedef struct {
	int top;
	GraphNode* data[MAX_VERTICES];
}StackType;

int visited[MAX_VERTICES];

void init_stack(StackType* s) {
	s->top = -1;
}

void push(StackType* s, GraphNode* node) {
	if (s->top + 1 >= MAX_VERTICES) {
		fprintf(stderr, "Stack overflow");
		return;
	}
	s->data[++s->top] = node;
}

GraphNode* pop(StackType* s) {
	if (s->top == -1) {
		fprintf(stderr, "Stack is empty\n");
		return;
	}
	return s->data[s->top--];
}

void init(GraphType* g) {
	g->n = 0;
	for (int i = 0; i < MAX_VERTICES; i++)
		g->adj_list[i] = NULL;
}

void insert_vertex(GraphType* g, int v) {
	if (g->n + 1 > MAX_VERTICES) {
		fprintf(stderr, "그래프 : 정점의 개수 오류");
		return;
	}
	g->n++;
}

void insert_edge(GraphType* g, int v, int u) {
	if (v >= g->n || u >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = u;
	node->link = g->adj_list[v];
	g->adj_list[v] = node;
}

void dfs_list(GraphType* g, int v) {
	StackType* s = (StackType*)malloc(sizeof(StackType));
	GraphNode* p;
	init_stack(s);
	visited[v] = TRUE;
	printf("DFS : 정점 %d -> ", v);
	push(s, g->adj_list[v]);

	while (s->top != -1) {
		p = pop(s);
		visited[p->vertex] = TRUE;
		printf("정점 %d -> ", p->vertex);
		for (GraphNode* q = p; q; q = q->link)
			if (!visited[q->vertex])
				push(s, q);
	}
	printf("\n");
	free(s);
}

int main(void) {
	GraphType* g;
	g = (GraphType*)malloc(sizeof(GraphType));
	init(g);

	for (int i = 0; i < 4; i++)
		insert_vertex(g, i);

	insert_edge(g, 0, 1);
	insert_edge(g, 1, 0);
	insert_edge(g, 0, 2);
	insert_edge(g, 2, 0);
	insert_edge(g, 0, 3);
	insert_edge(g, 3, 0);
	insert_edge(g, 1, 2);
	insert_edge(g, 2, 1);
	insert_edge(g, 2, 3);
	insert_edge(g, 3, 2);

	dfs_list(g, 0);
	return 0;
}

