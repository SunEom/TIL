#include <stdio.h>
#include <stdlib.h>
#define MAX_LIST_SIZE 100

typedef int element;
typedef struct {
	int size;
	element data[MAX_LIST_SIZE];
}ListType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

void init_list(ListType* list) {
	list->size = 0;
}

int is_full(ListType* list) {
	return list->size == MAX_LIST_SIZE - 1;
}

int is_empty(ListType* list) {
	return list->size == 0;
}

int get_length(ListType* list) {
	return  list->size;
}

void display(ListType* list) {
	int length = get_length(list);
	for (int i = 0; i < length; i++)
		printf("%d->", list->data[i]);
	printf("NULL\n");
}
 
void clear(ListType* list) {
	list->size = 0;
}

void add(ListType* list, element item) {
	int index = 0;
	for (int i = 0; i < list->size; i++) {
		if (list->data[i] <= item)
			index++;
		else break;
	}

	for (int i = list->size - 1; i >= index; i--)
		list->data[i + 1] = list->data[i];
	list->data[index] = item;
	list->size++;
}

void delete(ListType* list, element item) {
	int index = -1;
	for (int i = 0; i < list->size; i++) {
		if (list->data[i] == item) {
			index = i;
			break;
		}
	}

	if (index == -1)
		printf("Cannot find %d\n", item);
	else {
		for (int i = index; i < list->size - 1; i++)
			list->data[i] = list->data[i + 1];
		list->size--;
	}
}

int main(void) {
	ListType list;
	init_list(&list);
	add(&list, 40);
	add(&list, 70);
	add(&list, 30);
	add(&list, 20);
	display(&list);


	delete(&list, 20);
	delete(&list, 70);
	display(&list);


	return 0;
}