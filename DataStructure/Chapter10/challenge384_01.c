#include <stdio.h>
#include <stdlib.h>

#define MAX_VERTICES 50
#define TRUE 1
#define FALSE 0

typedef struct GraphNode{
	int vertex;
	struct GraphNode* link;
}GraphNode;

typedef struct {
	int n;
	GraphNode* adj_list[MAX_VERTICES];
}GraphType;

int visited[MAX_VERTICES];

void init(GraphType* g) {
	g->n = 0;
	for (int i = 0; i < MAX_VERTICES; i++)
		g->adj_list[i] = NULL;
}

void insert_vertex(GraphType* g, int v) {
	if (g->n + 1 > MAX_VERTICES) {
		fprintf(stderr, "�׷��� : ������ ���� ����\n");
		return;
	}
	g->n++;
}

void insert_edge(GraphType* g, int v, int u) {
	if (v >= g->n || u >= g->n) {
		fprintf(stderr, "�׷��� : ���� ��ȣ ����\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = u;
	node->link = g->adj_list[v];
	g->adj_list[v] = node;
}

void dfs_list(GraphType* g, int v) {
	GraphNode* p;
	if (v >= g->n) {
		fprintf(stderr, "�׷��� : ���� ��ȣ ����\n");
		return;
	}
	visited[v] = TRUE;
	p = g->adj_list[v];
	printf("���� %d -> ", v);
	while (p) {
		if(!visited[p->vertex])
			dfs_list(g, p->vertex);
		p = p->link;
	}
}

int main() {
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