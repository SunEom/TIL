#include <stdio.h>
#include <stdlib.h>

#define MAX_VERTICES 50
typedef struct {
	int n;
	int adj_mat[MAX_VERTICES][MAX_VERTICES];
}GraphType1;

typedef struct GraphNode {
	int vertex;
	struct GraphNode* link;
}GraphNode;

typedef struct {
	int n;
	GraphNode* adj_list[MAX_VERTICES];
}GraphType2;

void init_type1(GraphType1* g) {
	g->n = 0;
	for (int r = 0; r < MAX_VERTICES; r++)
		for (int c = 0; c < MAX_VERTICES; c++)
			g->adj_mat[r][c] = 0;
}

void init_type2(GraphType2* g) {
	g->n = 0;
	for (int i = 0; i < MAX_VERTICES; i++)
		g->adj_list[i] = NULL;
}

void insert_vertex1(GraphType1* g, int v) {
	if (g->n + 1 >= MAX_VERTICES) {
		fprintf(stderr, "그래프 : 정점의 개수 초과\n");
		return;
	}
	g->n++;
}

void insert_vertex2(GraphType2* g, int v) {
	if (g->n + 1 >= MAX_VERTICES) {
		fprintf(stderr, "그래프 : 정점의 개수 초과\n");
		return;
	}
	g->n++;
}

void insert_edge1(GraphType1* g, int start, int end) {
	if (start >= g->n || end >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return;
	}
	g->adj_mat[start][end] = 1;
	g->adj_mat[end][start] = 1;
}

void insert_edge2(GraphType2* g, int u, int v) {
	if (u >= g->n || v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return;
	}
	GraphNode* node = (GraphNode*)malloc(sizeof(GraphNode));
	node->vertex = v;
	node->link = g->adj_list[u];
	g->adj_list[u] = node;
}

void print_adj_mat(GraphType1* g) {
	for (int r = 0; r < g->n; r++) {
		for (int c = 0; c < g->n; c++)
			printf("%d ", g->adj_mat[r][c]);
		printf("\n");
	}
}

void print_adj_list(GraphType2* g) {
	for (int i = 0; i < g->n; i++) {
		printf("정점 %d의 연결리스트 : ",i);
		GraphNode* p = g->adj_list[i];
		while (p) {
			printf("-> %d ", p->vertex);
			p = p->link;
		}
		printf("\n");
	}
}

int get_degree1(GraphType1* g, int v) {
	if (v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return -1;
	}
	int degree = 0;
	for (int c = 0; c < g->n; c++)
		if (g->adj_mat[v][c] == 1) degree++;
	return degree;
}

int get_degree2(GraphType2* g, int v) {
	if (v >= g->n) {
		fprintf(stderr, "그래프 : 정점 번호 오류\n");
		return -1;
	}
	int degree = 0;
	GraphNode* p = g->adj_list[v];
	while (p!=NULL) {
		degree++;
		p = p->link;
	}
	return degree;
}

int main() {
	GraphType1* g1;
	GraphType2* g2;
	g1 = (GraphType1*)malloc(sizeof(GraphType1));
	g2 = (GraphType2*)malloc(sizeof(GraphType2));

	init_type1(g1);
	init_type2(g2);

	for (int i = 0; i < 4; i++) {
		insert_vertex1(g1, i);
		insert_vertex2(g2, i);
	}

	insert_edge1(g1, 0, 1);
	insert_edge1(g1, 0, 2);
	insert_edge1(g1, 0, 3);
	insert_edge1(g1, 1, 2);
	insert_edge1(g1, 2, 3);

	insert_edge2(g2, 0, 1);
	insert_edge2(g2, 1, 0);
	insert_edge2(g2, 0, 2);
	insert_edge2(g2, 2, 0);
	insert_edge2(g2, 0, 3);
	insert_edge2(g2, 3, 0);
	insert_edge2(g2, 1, 2);
	insert_edge2(g2, 2, 1);
	insert_edge2(g2, 2, 3);
	insert_edge2(g2, 3, 2);

	print_adj_mat(g1);
	printf("\n");
	print_adj_list(g2);
	printf("\n");

	printf("그래프 1의 정점 1의 차수 : %d\n", get_degree1(g1, 1));
	printf("그래프 2의 정점 2의 차수 : %d\n", get_degree2(g2, 2));

	free(g1);
	free(g2);
	return 0; 
}