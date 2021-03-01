#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

typedef struct ListType {
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
	if (plist == NULL) error("Malloc Error!");
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

int get_length(ListType* plist) {
	int length = 0;
	for (ListNode* p = plist->head; p; p = p->link)
		length++;
	return length;
}

int main(void) {
	ListType* list;
	int count, num;
	list = create();

	printf("Number of node : ");
	scanf("%d", &count);

	for (int i = 0; i < count; i++) {
		printf("Node #%d Data : ", i + 1);
		scanf("%d", &num);
		insert_last(list, num);
	}

	printf("Number of node in linked list : %d\n", get_length(list));
	return 0;
	
}