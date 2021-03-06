#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef struct {
	int key;
}element;

typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

ListNode* new_node(element item) {
	ListNode* node = (ListNode*)malloc(sizeof(ListNode));
	node->data = item;
	node->link = NULL;
	return node;
}

ListNode* enqueue(ListNode* l, element item) {
	ListNode* node = new_node(item);
	ListNode* p;
	ListNode* pre;
	if (l == NULL) return node;
	for (p = l; p!=NULL && p->data.key > node->data.key; p = p->link);
	if (p == l) {
		node->link = l;
		l = node;
	}
	else {
		for (pre = l; pre->link != p; pre = pre->link);
		node->link = pre->link;
		pre->link = node;
	}
	return l;
}

ListNode* dequeue(ListNode* l) {
	if (l == NULL) return;
	ListNode* removed = l;
	element item = l->data;
	l = l->link;
	free(removed);
	printf("%d ", item.key);
	return l;
}

void print_queue(ListNode* l) {
	for (ListNode* p = l; p; p = p->link)
		printf("%d ", p->data.key);
	printf("\n");
}

int main(void) {
	ListNode* head = NULL;
	element e;
	srand(time(NULL));

	for (int i = 0; i < 10; i++) {
		e.key = rand() % 30 + 1;
		head = enqueue(head, e);
	}
	for (int i = 0; i < 10; i++)
		head = dequeue(head);
	
	return 0;
	
}