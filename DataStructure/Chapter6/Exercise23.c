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

int get_length(ListType* plist) {
	return plist->size;
}

void display(ListType* plist) {
	for (ListNode* p = plist->head; p; p = p->link)
		printf("%d->", p->data);
	printf("NULL\n");
}

void add(ListType* plist, element value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	p->data = value;
	if (plist->head == NULL) {
		p->link = NULL;
		plist->head = plist->tail = p;
	}
	else if (plist->head->data > value) {
		p->link = plist->head;
		plist->head = p;
	}
	else if (plist->tail->data < value) {
		p->link = NULL;
		plist->tail->link = p;
		plist->tail = p;
	}
	else {
		for (ListNode* pre = plist->head; pre->link->data < value; pre = pre->link) {
			p->link = pre->link;
			pre->link = p;
		}
	}
	plist->size++;
}

void delete(ListType* plist, element value) {
	ListNode* removed;
	ListNode* pre;
	ListNode* p;
	for (p = plist->head; p && p->data != value; p = p->link);
	if (p == NULL) {
		printf("Can not find %d\n", value);
		return;
	}
	else {
		for (pre = plist->head; pre->link != p; pre = pre->link);
		removed = pre->link;
		pre->link = removed->link;
		free(removed);
		plist->size--;
	}
}

void clear(ListType* plist) {
	ListNode* removed;
	ListNode* p = plist->head;
	while (p) {
		removed = p;
		p = p->link;
		free(removed);
	}
	plist->head = plist->tail = NULL;
}

int main(void) {
	ListType* list;
	list = create();

	add(list, 30);
	add(list, 80);
	add(list, 10);
	display(list);

	//delete(list, 30);
	clear(list);
	display(list);
	return 0;
}