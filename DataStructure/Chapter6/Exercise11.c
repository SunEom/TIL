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
	if (plist == NULL) error("Malloc Error");
	plist->size = 0;
	plist->head = plist->tail = NULL;
	return plist;
}

void insert_last(ListType* plist, element value) {
	ListNode* p = (ListNode*)malloc(sizeof(ListNode));
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
	printf("\n");
}

int sum_list(ListType* plist) {
	int sum = 0;
	for (ListNode* p = plist->head; p; p = p->link)
		sum += p->data;
	return sum;
}

int main(void) {
	int count, num;
	ListType* list;
	list = create();

	printf("Number of Node : ");
	scanf("%d", &count);

	for (int i = 0; i < count; i++) {
		printf("Node #%d Data : ", i + 1);
		scanf("%d", &num);
		insert_last(list, num);
	}
	printf("Sum of linked list's data : %d\n", sum_list(list));
	return 0;
}