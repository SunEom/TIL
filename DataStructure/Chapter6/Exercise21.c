#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct {
	int expon;
	int coef;
}element;

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

void insert_last(ListType* plist, int coef, int expon) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	if (p == NULL) error("Malloc Error");
	p->data.coef = coef;
	p->data.expon = expon;
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
		printf("%d^%d + ", p->data.coef, p->data.expon);
	printf("\n");
}

int poly_eval(ListType* plist, int value) {
	int result = 0;
	for (ListNode* p = plist->head; p; p = p->link) 
		result += p->data.coef * pow(value, p->data.expon);

	return result;	
}

int main(void) {
	ListType* list;
	list = create();

	insert_last(list, 1, 3);
	insert_last(list, 2, 1);
	insert_last(list, 6, 0);
	print_list(list);

	printf("f(2) = %d\n", poly_eval(list, 2));
	return 0;
}
