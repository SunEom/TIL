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
	if (p == NULL) error("Malloc error");
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

void merge(ListType* plist1, ListType* plist2, ListType* plist3) {
	ListNode* a = plist1->head;
	ListNode* b = plist2->head;

	while (a && b) {
		if (a->data == b->data) {
			insert_last(plist3, a->data);
			insert_last(plist3, b->data);
			a = a->link; b = b->link;
		}
		else if (a->data < b->data) {
			insert_last(plist3, a->data);
			a = a->link;
		}
		else {
			insert_last(plist3, b->data);
			b = b->link;
		}
	}

	for (; a; a = a->link)
		insert_last(plist3, a->data);
	for (; b; b = b->link)
		insert_last(plist3, b->data);
}

int main(void) {
	ListType* list1, * list2, * list3;
	list1 = create();
	list2 = create();
	list3 = create();

	for (int i = 1; i < 11; i += 2)
		insert_last(list1, i);
	for (int i = 2; i < 11; i += 2)
		insert_last(list2, i);

	print_list(list1);
	printf("-----------------------------\n");
	print_list(list2);
	printf("-----------------------------\n");

	merge(list1, list2, list3);
	print_list(list3);
	return 0;

}

