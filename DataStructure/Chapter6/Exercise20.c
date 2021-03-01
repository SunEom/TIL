#include <stdio.h>
#include <stdlib.h>

typedef struct {
	int coef;
	int expon;
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
	element temp;
	temp.coef = coef;
	temp.expon = expon;
	if (p == NULL) error("Malloc Error");
	p->data = temp;
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
		printf("%d^%d + ", p->data);
	printf("\n");
}

void add_poly(ListType* plist1, ListType* plist2, ListType* plist3) {
	int sum;
	ListNode* a = plist1->head;
	ListNode* b = plist2->head;

	while (a && b) {
		if (a->data.expon == b->data.expon) {
			sum = a->data.coef + b->data.coef;
			insert_last(plist3, sum, a->data.expon);
			a = a->link; b = b->link;
		}
		else if (a->data.expon > b->data.expon) {
			insert_last(plist3, a->data.coef, a->data.expon);
			a = a->link;
		}
		else {
			insert_last(plist3, b->data.coef, b->data.expon);
			b = b->link;
		}
	}

	for (; a; a = a->link)
		insert_last(plist3, a->data.coef, a->data.expon);
	for (; b; b = b->link)
		insert_last(plist3, b->data.coef, b->data.expon);
}

int main(void) {
	ListType* list1, * list2, * list3;
	list1 = create();
	list2 = create();
	list3 = create();

	insert_last(list1, 3, 6);
	insert_last(list1, 7, 3);
	insert_last(list1, -2, 2);
	insert_last(list1, -9, 0);
	print_list(list1);

	insert_last(list2, -2, 6);
	insert_last(list2, -4, 4);
	insert_last(list2, 6, 2);
	insert_last(list2, 6, 1);
	insert_last(list2, 1, 0);
	print_list(list2);
	
	add_poly(list1, list2, list3);
	printf("----------------------------------\n");
	print_list(list3);
	return	0;
}

