#include <stdio.h>
#include <stdlib.h>
#define MAX_LIST_SIZE 100

typedef int element;
typedef struct {
	int size;
	element array[MAX_LIST_SIZE];
} ArrayListType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init(ArrayListType* L) {
	L->size = 0;
}

int is_empty(ArrayListType* L) {
	return L->size == 0;
}

int is_full(ArrayListType* L) {
	return L->size == MAX_LIST_SIZE;
}

void get_entry(ArrayListType* L, int pos) {
	if (pos < 0 || pos >= L->size) error("Position Error");
	return L->array[pos];
}

void print_list(ArrayListType* L) {
	for (int i = 0; i < L->size; i++)
		printf("%d->", L->array[i]);
	printf("\n");
}

void insert_last(ArrayListType* L, element item) {
	if (is_full(L)) error("List overflow");
	L->array[L->size++] = item;
}

void insert(ArrayListType* L, element item, int pos) {
	if (!is_full(L) && pos >= 0 && pos <= L->size) {
		for (int i = (L->size) - 1; i >= pos; i--)
			L->array[i + 1] = L->array[i];
		L->array[pos] = item;
		L->size++;
	}
}

element delete(ArrayListType* L, int pos) {
	element item;
	if (pos < 0 || pos >= L->size) error("Position Error");

	item = L->array[pos];

	for (int i = pos; i < L->size; i++)
		L->array[i] = L->array[i + 1];
	L->size--;
	return item;
}

//Challenge #1
void insert_first(ArrayListType* L, element item) {
	if (is_full(L)) error("List overflow");
	for (int i = L->size - 1; i >= 0; i--)
		L->array[i + 1] = L->array[i];
	L->array[0] = item;
	L->size++;
}


int main(void) {
	ArrayListType list;

	init(&list);
	insert_first(&list, 10); print_list(&list);
	insert_first(&list, 20); print_list(&list);
	insert_first(&list, 30); print_list(&list);

	//Challenge #2
	ArrayListType* listp;

	listp = (ArrayListType*)malloc(sizeof(ArrayListType));
	init(listp);
	insert_first(listp, 10); print_list(listp);
	insert_first(listp, 20); print_list(listp);
	insert_first(listp, 30); print_list(listp);
	return 0;
}