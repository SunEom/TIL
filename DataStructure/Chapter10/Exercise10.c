#include <stdio.h>
#include <stdlib.h>
#define MAX_VERTICES 50

typedef struct GraphNode{
	int vertex;
	struct GraphNode* link;
}GraphNode;

typedef struct {
	int n;
	GraphNode* adj_list[MAX_VERTICES];
}GraphType;

void init(GraphType* g) {
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

int out_degree(GraphType* g, int v) {
	if (v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return -1;
	}
	int degree = 0;
	for (GraphNode* p = g->adj_list[v]; p; p = p->link) degree++;
	return degree;
}

int in_degree(GraphType* g, int v) {
	if (v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return -1;
	}
	int degree = 0;
	for (int i = 0; i < MAX_VERTICES; i++) {
		if (i == v) continue;
		for(GraphNode*p = g->adj_list[i];p;p=p->link)
			if (p->vertex == v) {
				degree++;
				break;
			}
	}
	return degree;
}

int count_edge(GraphType* g) {
	int edge = 0;
	for (int i = 0; i < g->n; i++)
		for (GraphNode* p = g->adj_list[i]; p; p = p->link)edge++;
	return edge;
}

int main(void) {
	GraphType* g;
	g = (GraphType*)malloc(sizeof(GraphType));
	init(g);
	for (int i = 0; i < 6; i++)
		insert_vertex(g, i);
	insert_edge(g, 0, 1);
	insert_edge(g, 0, 2);
	insert_edge(g, 0, 3);
	insert_edge(g, 1, 2);
	insert_edge(g, 1, 3);
	insert_edge(g, 2, 4);
	insert_edge(g, 3, 0);
	insert_edge(g, 3, 4);
	insert_edge(g, 4, 1);
	insert_edge(g, 4, 2);
	insert_edge(g, 5, 4);

	for (int i = 0; i < 6; i++)
		printf("정점%d의 진출차수 : %d\n", i, out_degree(g, i));
	printf("\n");
	for (int i = 0; i < 6; i++)
		printf("정점%d의 진입차수 : %d\n", i, in_degree(g, i));
	printf("\n");
	printf("그래프의 간선의 개수 : %d\n", count_edge(g));
	return 0;
}

