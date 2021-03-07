#include <stdio.h>
#include <stdlib.h>
#define MAX_VERTICES 50
#define TRUE 1
#define FALSE 0

int visited[MAX_VERTICES];

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

#define MAX_QUEUE_SIZE 10
typedef struct {
	int front, rear;
	GraphNode* queue[MAX_QUEUE_SIZE];
}QueueType;

void init_queue(QueueType* q) {
	q->front = q->rear = 0;
}

int is_empty(QueueType* q) {
	return q->front == q->rear;
}

int is_full(QueueType* q) {
	return (q->rear + 1) % MAX_QUEUE_SIZE == q->front;
}

void enqueue(QueueType* q, GraphNode* node) {
	if (is_full(q)) {
		fprintf(stderr,"Queue overflow\n");
		return;
	}
	q->rear = (q->rear + 1) % MAX_QUEUE_SIZE;
	q->queue[q->rear] = node;
}

GraphNode* dequeue(QueueType* q) {
	if (is_empty(q)) {
		fprintf(stderr, "Queue is empty\n");
		return NULL;
	}
	q->front = (q->front + 1) % MAX_QUEUE_SIZE;
	return  q->queue[q->front];
}

void bfs_list(GraphType* g, int v) {
	QueueType* q = (QueueType*)malloc(sizeof(QueueType));
	init_queue(q);
	GraphNode* p;
	visited[v] = TRUE;
	printf("BFS : 정점 %d ", v);
	enqueue(q, g->adj_list[v]);
	while (!is_empty(q)) {
		for (p = dequeue(q); p; p = p->link) {
			if (!visited[p->vertex]) {
				enqueue(q, g->adj_list[p->vertex]);
				visited[p->vertex] = TRUE;
				printf("-> 정점 %d ", p->vertex);
			}
		}
	}
	free(q);
}

int main(void) {
	GraphType* g;
	g = (GraphType*)malloc(sizeof(GraphType));
	init(g);
	for (int i = 0; i < 5; i++)
		insert_vertex(g, i);
	insert_edge(g, 0, 1);
	insert_edge(g, 1, 0);
	insert_edge(g, 0, 2);
	insert_edge(g, 2, 0);
	insert_edge(g, 0, 4);
	insert_edge(g, 4, 0);
	insert_edge(g, 1, 2);
	insert_edge(g, 2, 1);
	insert_edge(g, 2, 3);
	insert_edge(g, 3, 2);
	insert_edge(g, 2, 4);
	insert_edge(g, 4, 2);
	insert_edge(g, 3, 4);
	insert_edge(g, 4, 3);
	
	bfs_list(g, 0);
	free(g);
	return 0;
}