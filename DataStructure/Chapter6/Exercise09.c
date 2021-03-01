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
	plist->size = 0;
	plist->head = plist->tail = NULL;
	return plist;
}

void insert_last(ListType* plist, element item) {
	ListNode* temp = (ListNode*)malloc(sizeof(ListNode));
	if (temp == NULL) error("Malloc Error");
	temp->data = item;
	temp->link = NULL;
	if (plist->head == NULL) {
		plist->head = plist->tail = temp;
	}
	else {
		plist->tail->link = temp;
		plist->tail = temp;
	}
	plist->size++;
}

void print_list(ListType* plist) {
	for (ListNode* p = plist->head; p; p = p->link)
		printf("%d->", p->data);
	printf("NULL \n");
}

int main(void) {
	int count,num;
	ListType* list;
	list = create();

	printf("Number of Node : ");
	scanf("%d", &count);

	for (int i = 0; i < count; i++) {
		printf("Node #%d data : ", i + 1);
		scanf("%d", &num);
		insert_last(list, num);
	}
	print_list(list);	
	return 0;
}