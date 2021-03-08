#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define n 6

int mat[n][n] = {
	{0,1,1,1,0,0},
	{0,0,1,1,0,0},
	{0,0,0,0,1,0},
	{1,0,0,0,1,0},
	{0,1,1,0,0,0},
	{0,0,0,0,1,0}
};

int out_degree(int a[][n],int v) {
	int degree = 0;
	for (int i = 0; i < n; i++)
		if (a[v][i] == 1) degree++;
	return degree;
}

int in_degree(int a[][n], int v) {
	int degree = 0;
	for (int i = 0; i < n; i++)
		if (a[i][v] == 1)degree++;
	return degree;
}

int count_edge(int a[][n]) {
	int edge = 0;
	for (int r = 0; r < n; r++)
		for (int c = 0; c < n; c++)
			if (a[r][c] == 1) edge++;
	return edge;
}

int main(void) {
	for (int i = 0; i < 6; i++)
		printf("정점%d의 진출차수 : %d\n", i,out_degree(mat,i));

	printf("\n\n");
	for (int i = 0; i < 6; i++)
		printf("정점%d의 진입차수 : %d\n", i, in_degree(mat, i));
	printf("\n\n");
	printf("간선의 개수 : %d\n", count_edge(mat));


	return 0;
}
