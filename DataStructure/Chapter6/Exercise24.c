#include <stdio.h>
#include <stdlib.h>
#define ROWS 5
#define COLS 5

typedef struct {
	int value;
	int row;
	int col;
} element;

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

void insert_matrix(ListType* plist, int row, int col, int value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	if (p == NULL) error("Malloc Error");
	p->data.value = value;
	p->data.row = row;
	p->data.col = col;
	if (plist->head == NULL) {
		p->link = NULL;
		plist->head = plist->tail = p;
	}
	else {
		ListNode* tmp;
		ListNode* pre;
		for (tmp = plist->head; tmp && tmp->data.row < row; tmp = tmp->link);
		if (tmp == plist->head) {
			p->link = plist->head;
			plist->head = p;
		}
		else if (tmp == NULL) {
			p->link = NULL;
			plist->tail->link = p;
			plist->tail = p;
		}
		else {
			if (tmp->data.row == row)
				for (; tmp && tmp->data.col <= col; tmp = tmp->link);
			for (pre = plist->head; pre->link != tmp; pre = pre->link);
			p->link = pre->link;
			pre->link = p;
		}
	}
	plist->size++;
}

void print_matrix(ListType* plist) {
	ListNode* p = plist->head;
	if (p == NULL) return;
	for (int r = 0; r < ROWS; r++) {
		for (int c = 0; c < COLS; c++) {
			if (p == NULL) printf("0 ");
			else if (r == p->data.row && c == p->data.col) {
				printf("%d ", p->data.value);
				p = p->link;
			}
			else
				printf("0 ");
		}
		printf("\n");
	}
}

int main(void) {
	ListType* list;
	list = create();

	insert_matrix(list, 0, 3, 1);
	insert_matrix(list, 1, 3, 6);
	insert_matrix(list, 4, 2, 2);
	insert_matrix(list, 2, 3, 6);
	insert_matrix(list, 0, 1, 3);
	insert_matrix(list, 2, 0, 9);
	insert_matrix(list, 3, 2, 5);
	insert_matrix(list, 1, 2, 4);

	print_matrix(list);
	return 0;
}