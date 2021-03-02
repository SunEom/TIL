#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char element[100];
typedef struct DListNode {
	element data;
	struct DListNode* llink;
	struct DListNode* rlink;
}DListNode;

DListNode* current;

void init(DListNode* phead) {
	phead->llink = phead;
	phead->rlink = phead;
}
void print_dlist(DListNode* phead) {
	for (DListNode* p = phead->rlink; p != phead; p = p->rlink) {
		if (p == current) {
			printf("<-|#%s#|-> ", p->data);
		}
		else {
			printf("<-|%s|-> ", p->data);
		}
	}
	printf("\n");
}

void dinsert(DListNode* before, element value) {
	DListNode* newnode = (DListNode*)malloc(sizeof(DListNode));
	strcpy(newnode->data, value);
	newnode->llink = before;
	newnode->rlink = before->rlink;
	before->rlink->llink = newnode;
	before->rlink = newnode;
}

void ddelete(DListNode* head, DListNode* removed) {
	if (removed == head) return;
	removed->rlink->llink = removed->llink;
	removed->llink->rlink = removed->rlink;
	free(removed);
}

int main(void) {
	char ch;
	DListNode* head = (DListNode*)malloc(sizeof(DListNode));
	init(head);
	
	dinsert(head, "Mammamia");
	dinsert(head, "Dancing queen");
	dinsert(head, "Fernando");
	current = head->rlink;
	print_dlist(head);

	do {
		printf("\nInput command (< , > , q) : ");
		ch = getchar();
		if (ch == '<') {
			current = current->llink;
			if (current == head) current = current->llink;
		}
		else if (ch == '>') {
			current = current->rlink;
			if (current == head) current = current->rlink;
		}
		print_dlist(head);
		getchar();
	} while (ch != 'q');
	return 0;
}