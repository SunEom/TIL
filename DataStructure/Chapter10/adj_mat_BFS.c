#include <stdio.h>
#include <stdlib.h>
#define TRUE 1
#define FALSE 0
#define MAX_QUEUE_SIZE 10

typedef int element;

typedef struct {
	element queue[MAX_QUEUE_SIZE];
	int front, rear;
}QueueType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_queue(QueueType* q) {
	q->front = q->rear = -1;
}

int is_empty(QueueType* q) {
	return q->front == q->rear;
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

void enqueue(QueueType* q, element item) {
	if (is_full(q)) error("Queue overflow");
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->queue[q->rear] = item;
}

element dequeue(QueueType* q) {
	if (is_empty(q)) error("Queue is empty!");
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return q->queue[q->front];
}

#define MAX_VERTICES 50

typedef struct {
	int n;
	int adj_mat[MAX_VERTICES][MAX_VERTICES];
}GraphType;

int visited[MAX_VERTICES];

void init(GraphType* g) {
	g->n = 0;
	for (int r = 0; r < MAX_VERTICES; r++)
		for (int c = 0; c < MAX_VERTICES; c++)
			g->adj_mat[r][c] = 0;
}

void insert_vertex(GraphType* g, int v) {
	if (g->n + 1 > MAX_VERTICES) error("그래프 : 정점의 개수 오류");
	g->n++;
}

void insert_edge(GraphType* g, int u, int v) {
	if (u >= g->n || v >= g->n) error("그래프 : 정점 번호 오류");
	g->adj_mat[u][v] = 1;
	g->adj_mat[v][u] = 1;
}

void bfs_mat(GraphType* g, int v) {
	if (v >= g->n) error("그래프 : 정점 번호 오류");
	QueueType* q;
	q = (QueueType*)malloc(sizeof(QueueType));
	element e;
	init_queue(q);

	printf("BFS : 정점%d ",v);
	visited[v] = TRUE;
	enqueue(q, v);
	while (!is_empty(q)) {
		e = dequeue(q);
		for (int i = 0; i < g->n; i++) {
			if (g->adj_mat[e][i] && !visited[i]) {
				printf("-> 정점%d", i);
				visited[i] = TRUE;
				enqueue(q,i);
			}
		}
	}
	free(q);
}

int main(void) {
	GraphType* g;
	g = (GraphType*)malloc(sizeof(GraphType));
	init(g);

	for (int i = 0; i < 6; i++)
		insert_vertex(g, i);
	insert_edge(g, 0, 2);
	insert_edge(g, 2, 1);
	insert_edge(g, 2, 3);
	insert_edge(g, 0, 4);
	insert_edge(g, 4, 5);
	insert_edge(g, 1, 5);
	bfs_mat(g, 0);
	free(g);
	return 0;
}