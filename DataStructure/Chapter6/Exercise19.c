#include <stdio.h>
#include <stdlib.h>

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
	if (plist == NULL) error("Malloc Error");
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
	printf("NULL\n");
}

void split_list(ListType* plist1, ListType* plist2, ListType* plist3) {
	int order = 1;
	ListNode* p = plist1->head;
	while (p) {
		if (order % 2 == 1) {
			insert_last(plist2, p->data);
		}
		else {
			insert_last(plist3, p->data);
		}
		p = p->link;
		order++;
	}
}

int main(void) {
	ListType* list1, * list2, * list3;
	list1 = create();
	list2 = create();
	list3 = create();

	for (int i = 0; i < 10; i++)
		insert_last(list1, i);
	print_list(list1);
	
	split_list(list1, list2, list3);
	print_list(list1);
	print_list(list2);
	print_list(list3);
	return 0;
}

