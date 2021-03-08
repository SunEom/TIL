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
		fprintf(stderr, "�׷��� : ������ ���� ����\n");
		return;
	}
	g->n++;
}

void insert_edge(GraphType* g, int u, int v) {
	if (v >= g->n || u >= g->n) {
		fprintf(stderr, "�׷��� : ���� ��ȣ ����\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = v;
	node->link = g->adj_list[u];
	g->adj_list[u] = node;
}

int visited[MAX_VERTICES];

void check_bridge(GraphType* g, int v, int a, int b) {
	// �⺻���� DFS�� �����Ѵ�.
	visited[v] = 1;
	for (GraphNode* p = g->adj_list[v]; p; p = p->link) {
		// ���� a�� ���� b�� �����ϴ� ������ ���� �������� �ʴ´�.
		if ((v == a && p->vertex == b) || (v == b && p->vertex == a)) continue;
		if (visited[p->vertex] != 1)
			check_bridge(g, p->vertex,a,b);
	}
}

void reset_visited() {
	//visited �迭�� 0���� �ʱ�ȭ ��Ų��.
	for (int i = 0; i < MAX_VERTICES; i++)
		visited[i] = 0;
}

void find_bridge(GraphType* g) {
	reset_visited();

	for (int i = 0; i < g->n; i++) {
		for (GraphNode*p = g->adj_list[i]; p; p=p->link) {
			if (i > p->vertex)continue; // ���� a -> ���� b�� Ȯ�������� ���� b -> ���� a�� ���� Ȯ������ �ʴ´�.
			int count = 0;
			check_bridge(g, i, i, p->vertex); //DFS�� �����Ѵ�.
			for (int i = 0; i < g->n; i++)
				if (visited[i] == 1) count++; // �湮�� ����� ������ ����Ѵ�.
			if (count != g->n) // ���� ��ü ��忡 �湮���� �ʾҴٸ� �긴���̴�.
				printf("���� %d�� ����%d�� �մ� ������ �긮���Դϴ�.\n",i,p->vertex);
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