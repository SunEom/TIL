#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
	char name[10];
	int age;
	double height;
} element;

typedef struct ListNode {
	element data;
	struct ListNode* link;
}ListNode;

typedef struct ListType {
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
	for (ListNode* p = plist->head; p; p = p->link) {
		printf("Name : %s\n", p->data.name);
		printf("Age : %d\n", p->data.age);
		printf("Height : %g\n\n", p->data.height);
	};
}

int main(void) {
	ListType* list;
	element student;
	list = create();

	strcpy(student.name, "Suneom");
	student.age = 25;
	student.height = 1.7;

	insert_last(list, student);
	print_list(list);
	printf("-------------------------------------------------------------\n");
	
	strcpy(student.name, "Egoing");
	student.age = 22;
	student.height = 1.5;

	insert_last(list, student);
	print_list(list);
	printf("-------------------------------------------------------------\n");

	strcpy(student.name, "Sonny");
	student.age = 26;
	student.height = 1.8;

	insert_last(list, student);
	print_list(list);
	printf("-------------------------------------------------------------\n");
	return 0;
}