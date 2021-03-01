#include <stdio.h>
#include <stdlib.h>

typedef int element;
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
	if (plist == NULL)error("Malloc Error");
	plist->size = 0;
	plist->head = plist->tail = NULL;
	return plist;
}

void insert_last(ListType* plist, element value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
	if (p == NULL)error("Malloc error");
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
	printf("NULL\n");
}

void delete_odd(ListType* plist) {
	if (plist->head == NULL) error("List is empty");
	int order = 1;
	ListNode* removed;
	ListNode* p = plist->head;
	while (p) {
		if (order % 2 == 1) {
			if (p == plist->head) {
				removed = p;
				p = p->link;
				plist->head = removed->link;
				free(removed);
				plist->size--;
			}
			else if (p == plist->tail) {
				ListNode* pre;
				removed = p;
				for (pre = plist->head; pre->link != p; pre = pre->link);
				pre->link = NULL;
				plist->tail = pre;
				p = p->link;
				free(removed);
				plist->size--;
			}
			else {
				ListNode* pre;
				removed = p;
				for (pre = plist->head; pre->link != p; pre = pre->link);
				pre->link = removed->link;
				p = p->link;
				free(removed);
				plist->size--;
			}
		}
		else {
			p = p->link;
		}
		order++;
	}
}

int main(void) {
	ListType* list;
	list = create();

	for (int i = 0; i < 10; i++)
		insert_last(list, i + 1);

	print_list(list);

	delete_odd(list);
	print_list(list);
	return 0;

}