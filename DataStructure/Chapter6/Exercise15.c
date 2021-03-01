#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef int element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;
typedef struct {
	int size;
	ListNode* head;
	ListNode* tail;
}ListType;

void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

ListType* create() {
	ListType* plist = (ListType*)malloc(sizeof(ListType));
	if (plist == NULL)error("Malloc Error");
	plist->size = 0;
	plist->head = plist->tail = NULL;
	return plist;
}

void insert_last(ListType* plist, element value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	if (p == NULL) error("Malloc Error");
	p->data = value;
	p->link = NULL;
	if (plist->head == NULL) {
		plist->head = plist->tail = p;
	}
	else {
		plist->tail->link = p;
		plist->tail = p;
	}
	plist->size++;
}

void print_list(ListType* plist) {
	for (ListNode* p = plist->head; p; p = p->link)
		printf("%d->", p->data);
	printf("NULL \n");
}

ListNode* max_list(ListType* plist) {
	ListNode* max_node = plist->head;
	int max = plist->head->data;
	for (ListNode* p = plist->head; p; p = p->link)
		if (max < p->data) {
			max = p->data;
			max_node = p;
		}
	return max_node;
}

ListNode* min_list(ListType* plist) {
	ListNode* min_node = plist->head;
	int min = plist->head->data;
	for (ListNode* p = plist->head; p; p = p->link)
		if (min > p->data) {
			min = p->data;
			min_node = p;
		}
	return min_node;
}

int main(void) {
	ListType* list;
	ListNode* max, * min;
	list = create();

	srand(time(NULL));
	for (int i = 0; i < 10; i++)
		insert_last(list, rand() % 10 + 1);

	print_list(list);

	max = max_list(list);
	min = min_list(list);
	printf("Max : %d\n", max->data);
	printf("Min : %d\n", min->data);
	return 0;
}