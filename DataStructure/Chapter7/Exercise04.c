#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

ListNode* insert(ListNode* head, element item) {
	ListNode* temp = (ListNode*)malloc(sizeof(ListNode));
	temp->data = item;
	if (head == NULL) {
		temp->link = temp;
		head = temp;
	}
	else {
		temp->link = head->link;
		head->link = temp;
	}
	return head;
}

int get_size(ListNode* head) {
	ListNode* p = head->link;
	if (head == NULL) return 0;
	int size = 0;
	do {
		size++;
		p = p->link;
	} while (p != head->link);
	return size;
}

void print_list(ListNode* head) {
	if (head == NULL) return;
	ListNode* p = head->link;
	do {
		printf("%d->", p->data);
		p = p->link;
	} while (p != head->link);
	printf("NULL\n");
}

int main() {
	ListNode* head = NULL;
	head = insert(head, 10);
	print_list(head);
	head = insert(head, 30);
	print_list(head);
	head = insert(head, 50);
	print_list(head);
	
	printf("Size of list : %d\n", get_size(head));
	return 0;
}