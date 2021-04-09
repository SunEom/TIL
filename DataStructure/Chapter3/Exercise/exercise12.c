#include <stdio.h>
#include <stdlib.h>

typedef struct {
	int n;
	char str[20];
}something;

int main(void) {
	something* s = (something*)malloc(sizeof(something));
	strcpy(s->str, "just testing");
	s->n = 100;
	printf("%s , %d\n",s->str, s->n);
	free(s);
	return 0;
}