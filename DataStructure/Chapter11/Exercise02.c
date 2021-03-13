#include <stdio.h>
#include <stdlib.h>

#define TRUE 1
#define FALSE 0
#define MAX_VERTICES 100
#define INF 1000000
int parent[MAX_VERTICES];

void set_init(int n) {
	for (int i = 0; i < n; i++)
		parent[i] = -1;
}

int set_find(int curr) {
	if (parent[curr] == -1) return curr;
	while (parent[curr] != -1) curr = parent[curr];
	return curr;
}

void set_union(int a, int b) {
	int root1 = set_find(a);
	int root2 = set_find(b);

	if (root1 != root2)
		parent[root1] = root2;
}

struct Edge {
	int start, end, weight;
};

typedef struct {
	int n;
	struct Edge edges[2 * MAX_VERTICES];
}GraphType;

void graph_init(GraphType*g) {
	g->n = 0;
	for (int i = 0; i < g->n; i++) {
		g->edges[i].start = 0;
		g->edges[i].end = 0;
		g->edges[i].weight = INF;
	}
}

void insert_edge(GraphType* g ,int start, int end, int weight) {
	if (g->n + 1 > MAX_VERTICES) {
		fprintf(stderr, "그래프 : 정점의 개수 오류\n");
		return;
	}
	g->edges[g->n].start = start;
	g->edges[g->n].end = end;
	g->edges[g->n].weight = weight;
	g->n++;
}

int compare(const void* a, const void* b) {
	struct Edge* x = (struct Edge*)a;
	struct Edge* y = (struct Edge*)b;
	return (x->weight - y->weight);
}

void kruskal(GraphType* g, int size) {
	int uset, vset;
	struct Edge e;
	int edge_accepted = 0;

	set_init(g->n);
	qsort(g->edges, g->n, sizeof(struct Edge), compare);

	printf("크루스칼 최소 신장 트리 알고리즘 \n");
	int i = 0;
	while (edge_accepted < size - 1) {
		e = g->edges[i];
		uset = set_find(e.start);
		vset = set_find(e.end);
		if (uset != vset) {
			printf("간선 (%d, %d) %d 선택\n",e.start, e.end, e.weight);
			edge_accepted++;
			set_union(uset, vset);
		}
		i++;
	}
}

int main(void) {
	GraphType* g;
	g = (GraphType *)malloc(sizeof(GraphType));
	graph_init(g);

	insert_edge(g, 0, 1, 7);
	insert_edge(g, 0, 3, 5);
	insert_edge(g, 1, 2, 8);
	insert_edge(g, 1, 3, 9);
	insert_edge(g, 1, 4, 7);
	insert_edge(g, 2, 4, 5);
	insert_edge(g, 3, 4, 15);
	insert_edge(g, 3, 5, 6);
	insert_edge(g, 4, 5, 8);
	insert_edge(g, 4, 6, 9);
	insert_edge(g, 5, 6, 11);

	kruskal(g,7);
	free(g);
	return 0;
}