#include <stdio.h>

typedef int element;
typedef struct ListNode{
	element data;
	struct ListNode* link;
} ListNode;

int main(void) {
	ListNode* head = NULL;

	head = (ListNode*)malloc(sizeof(ListNode));
	head->data = 10;
	head->link = NULL;

	ListNode* p;
	p = (ListNode*)malloc(sizeof(ListNode));
	p->data = 20;
	p->link = NULL;
	head->link = p;
}