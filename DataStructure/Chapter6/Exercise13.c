#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

typedef	struct {
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
	if (plist == NULL) error("Malloc error");
	plist->size = 0;
	plist->head = plist->tail = NULL;
	return plist;
}

void insert_last(ListType* plist, element value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	if (p == NULL) error("Malloc Error");
	p->data = value;
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
		printf("%d->", p->data);
	printf("NULL \n");
}

void filter_list(ListType* plist, element value) {
	if (plist->head == NULL) return;
	ListNode* removed;
	
	for (ListNode* p = plist->head; p;) {
		if (p->data == value) {

			if (p == plist->head) {
				removed = p;
				plist->head = removed->link;
				free(removed);
				plist->size--;
			}
			else if (p == plist->tail) {
				ListNode* pre;
				for (pre = plist->head; pre->link != p; pre = pre->link);
				removed = p;
				p = p->link;
				plist->tail = pre;
				pre->link = NULL;
				free(removed);
				plist->size--;
			}
			else {
				ListNode* pre;
				for (pre = plist->head; pre->link != p; pre = pre->link);
				removed = p;
				p = p->link;
				pre->link = removed->link;
				free(removed);
				plist->size--;
			}
		}
		else {
			p = p->link;
		}
	}
}

int main(void) {
	ListType* list;
	list = create();

	for (int i = 0; i < 10; i++)
		insert_last(list, i % 3);

	print_list(list);

	filter_list(list, 2);

	print_list(list);
	return 0;
}