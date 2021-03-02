#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef	 struct DListNode {
	element data;
	struct DListNode* llink;
	struct DListNode* rlink;
}DListNode;

DListNode* insert(DListNode* head, element item) {
	DListNode* node = (DListNode*)malloc(sizeof(DListNode));
	node->data = item;
	if (head == NULL) {
		node->llink = node;
		node->rlink = node;
		head = node;
	}
	else {
		node->llink = head->llink;
		node->rlink = head;
		head->llink->rlink = node;
		head->llink = node;
	}
	return head;
}

void print_dlist(DListNode* head) {
	if (head == NULL) return;
	DListNode* p = head;
	do {
		printf("%d->", p->data);
		p = p->rlink;
	} while (p != head);
	printf("NULL\n");
}

DListNode* search(DListNode* head, element data) {
	if (head == NULL) return NULL;
	DListNode* p = head;
	do {
		if (p->data == data) return p;
		p = p->rlink;
	} while (p != head);
	return NULL;
}

int main(void) {
	DListNode* head = NULL;

	head = insert(head, 10);
	print_dlist(head);
	head = insert(head, 30);
	print_dlist(head);
	head = insert(head, 50);
	print_dlist(head);
	head = insert(head, 70);
	print_dlist(head);

	if (search(head, 30)) {
		printf("Find 30 in the list\n");
	}
	else {
		printf("Can not find 30 in the list\n");
	}

	if (search(head, 80)) {
		printf("Find 80 in the list\n");
	}
	else {
		printf("Can not find 80 in the list\n");
	}
	return 0;
}