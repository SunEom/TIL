#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

ListNode* insert(ListNode* head, element item) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode*));
	p->data = item;
	if (head == NULL) {
		p->link = p;
		head = p;
	}
	else {
		p->link = head->link;
		head->link = p;
	}
	return head;
}

void print_list(ListNode* head) {
	ListNode* p = head->link;
	if (p == NULL) return;
	do {
		printf("%d->", p->data);
		p = p->link;
	} while (p != head->link);
	printf("NULL\n");
}

ListNode* search(ListNode* head, element data) {
	if (head == NULL) return NULL;
	ListNode* p = head->link;
	do {
		if (p->data == data) return p;
		p = p->link;
	} while (p != head->link);
	return NULL;
}

int main(void) {
	ListNode *head = NULL;

	head = insert(head, 10);
	print_list(head);
	head = insert(head, 20);
	print_list(head);
	head = insert(head, 30);
	print_list(head);

	if (search(head, 50)) {
		printf("Find 50 in the list\n");
	}
	else {
		printf("Can not find 50 in the list\n");
	}
	return 0;
}