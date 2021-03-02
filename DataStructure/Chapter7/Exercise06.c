#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct DListNode {
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
		node->llink = head->rlink;
		node->rlink = head;
		head->llink->rlink = node;
		head->llink = node;
	}
	return head;
}

void print_reverse(DListNode* head) {
	if (head == NULL) return;
	DListNode* p = head->llink;
	do {
		printf("%d ", p->data);
		p = p->llink;
	} while (p != head->llink);
	printf("\n");
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

int main(void) {
	DListNode* head = NULL;

	head = insert(head, 10);
	print_dlist(head);
	head = insert(head, 30);
	print_dlist(head);
	head = insert(head, 50);
	print_dlist(head);

	print_reverse(head);
	return 0;

}