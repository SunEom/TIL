#include <stdio.h>
#include <stdlib.h>
#define MAX_ELEMENT 200

typedef struct {
	int key;
	char title[20];
}element;

typedef struct {
	element heap[MAX_ELEMENT];
	int heap_size;
}HeapType;

HeapType* create() {
	return  (HeapType*)malloc(sizeof(HeapType));
}

void init(HeapType* h) {
	h->heap_size = 0;
}

void insert_max_heap(HeapType* h, element item) {
	int i;
	i = ++h->heap_size;
	while (i != 1 && item.key > h->heap[i/2].key) {
		h->heap[i] = h->heap[i / 2];
		i /= 2;
	}
	h->heap[i] = item;
}

element delete_max_heap(HeapType* h) {
	element item, temp;
	int parent, child;
	
	item = h->heap[1];
	temp = h->heap[h->heap_size--];
	parent = 1;
	child = 2;
	while (child <= h->heap_size) {
		if (child < h->heap_size && h->heap[child].key < h->heap[child + 1].key)
			child++;
		if (temp.key > h->heap[child].key) break;
		h->heap[parent] = h->heap[child];
		parent = child;
		child *= 2;
	}
	h->heap[parent] = temp;
	return item;
}

void help() {
	printf("삽입(i), 삭제(d) : ");
}

int main(void) {
	char ch;
	element temp;
	HeapType* heap = create();
	init(heap);

	do {
		help();
		ch = getchar();
		getchar();
		switch (ch) {
		case 'i':
			printf("할일 : ");
			gets(temp.title);
			printf("우선순위 : ");
			scanf("%d", &temp.key);
			getchar();
			insert_max_heap(heap, temp);
			break;
		case 'd':
			temp = delete_max_heap(heap);
			printf("제일 우선 순위가 높은 일은 \"%s\"\n", temp.title);
			break;
		default :
			break;
		}
	} while (ch != 'q');
	free(heap);
	return 0;
}