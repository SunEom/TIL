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
	if (v >= g->n || u >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = v;
	node->link = g->adj_list[u];
	g->adj_list[u] = node;
}

int visited[MAX_VERTICES];

void check_bridge(GraphType* g, int v, int a, int b) {
	// 기본적인 DFS를 진행한다.
	visited[v] = 1;
	for (GraphNode* p = g->adj_list[v]; p; p = p->link) {
		// 정점 a와 정점 b를 연결하는 간선인 경우는 실행하지 않는다.
		if ((v == a && p->vertex == b) || (v == b && p->vertex == a)) continue;
		if (visited[p->vertex] != 1)
			check_bridge(g, p->vertex,a,b);
	}
}

void reset_visited() {
	//visited 배열을 0으로 초기화 시킨다.
	for (int i = 0; i < MAX_VERTICES; i++)
		visited[i] = 0;
}

void find_bridge(GraphType* g) {
	reset_visited();

	for (int i = 0; i < g->n; i++) {
		for (GraphNode*p = g->adj_list[i]; p; p=p->link) {
			if (i > p->vertex)continue; // 정점 a -> 정점 b는 확인하지만 정점 b -> 정점 a의 경우는 확인하지 않는다.
			int count = 0;
			check_bridge(g, i, i, p->vertex); //DFS를 진행한다.
			for (int i = 0; i < g->n; i++)
				if (visited[i] == 1) count++; // 방문된 노드의 개수를 계산한다.
			if (count != g->n) // 만약 전체 노드에 방문하지 않았다면 브릿지이다.
				printf("정점 %d와 정점%d를 잇는 간선은 브리지입니다.\n",i,p->vertex);
			reset_visited();
		}
	}
}


int main(void) {
	GraphType* g;
	g = (GraphType*)malloc(sizeof(GraphType));
	init(g);

	for (int i = 0; i < 10; i++)
		insert_vertex(g, i);
	insert_edge(g, 0, 1);
	insert_edge(g, 1, 0);
	insert_edge(g, 1, 2);
	insert_edge(g, 2, 1);
	insert_edge(g, 3, 1);
	insert_edge(g, 1, 3);
	insert_edge(g, 4, 2);
	insert_edge(g, 2, 4);
	insert_edge(g, 4, 3);
	insert_edge(g, 3, 4);
	insert_edge(g, 5, 3);
	insert_edge(g, 3, 5);
	insert_edge(g, 5, 6);
	insert_edge(g, 6, 5);
	insert_edge(g, 5, 7);
	insert_edge(g, 7, 5);
	insert_edge(g, 6, 7);
	insert_edge(g, 7, 6);
	insert_edge(g, 7, 8);
	insert_edge(g, 8, 7);
	insert_edge(g, 9, 7);
	insert_edge(g, 7, 9);

	find_bridge(g);
	free(g);
	return 0;
}