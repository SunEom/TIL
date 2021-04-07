
#define _CRT_SECURE_NO_WARNINGS
#define MAXWORD 80

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


typedef struct element {
	char word[MAXWORD];
	int count;
} element;
typedef struct ListNode {
	element data;
	struct ListNode* link;
} ListNode;

// 초기화 함수
ListNode* init(ListNode* head)
{
	head = (ListNode*)malloc(sizeof(ListNode));
	if (head == NULL) exit(1);
	head->link = NULL;
	return head;
}
//헤더 노드를 이용한 삽입 함수
void insert_node(ListNode* head, char* key) {
	int cmp;
	ListNode* prev, * ptr;

	//아래를 완성하시오
	ptr = (ListNode*)malloc(sizeof(ListNode));

	// ptr을 초기화 해준다.
	strcmp(ptr->data.word,key); // ptr->data.word는 주소 상수이므로 간접참조 연산자를 이용하여 추가해준다.
	ptr->data.count = 1;
	ptr->link = NULL;
	prev = head;

	while (prev->link != NULL) {
		// 연결리스트에 새로운 노드를 추가하려면 이전 노드가 필요하다.
		// 그렇기 때문에 prev->link 노드와 ptr을 비교한 다음, 
		if (strcmp(prev->link->data.word, ptr->data.word) > 0) {
			// 추가하려는 단어가 prev->link 노드에 저장된 단어보다 작은 경우. 즉, prev와 prev->link 사이에 ptr이 들어가야하는 경우.
	
			// prev - ptr - prev-link 순으로 연결해준다.
			ptr->link = prev->link; 
			prev->link = ptr;
			break;
		}
		else if (strcmp(prev->link->data.word, ptr->data.word) == 0) { // 추가하려는 단어가 이미 노드에 존재하는 경우
			prev->link->data.count++; // 이미 존재하는 노드의 count를 1 증가시킨다.
			free(ptr); // ptr은 사용되지 않으므로 할당을 해제하여 메모리를 아낀다.
			break;
		}
		else // 추가하려는 단어가 prev->link 노드에 저장된 단어보다 큰 경우
			prev = prev->link;
	}
	if (prev->link == NULL) // 모든 노드를 다 순회했음에도 ptr을 추가하지 못한 경우 ( == ptr이 맨 마지막에 추가되어야하는 경우)
		//이미 추가된 노드가 있다면 prev->link가 NULL이 되기 전에 break문을 이용하여 빠져나오게 되기 때문에 if문이 실행되지 않는다.
		prev->link = ptr;
}
//헤더 노드를 이용한 삭제 함수
//void delete_node(ListNode* head, char* key)
//{
//	int cmp;
//	ListNode* prev, * ptr, * removed;
//
//	prev = head;
//	ptr = head->link;
//	while (ptr != NULL) {
//		cmp = strcmp(ptr->data.word, key);
//		if (cmp < 0) {
//			prev = ptr;
//			ptr = ptr->link;
//		}
//		else if (cmp == 0) {
//			removed = ptr;
//			prev->link = ptr->link;
//			//free(removed);
//			delete removed;
//			return;
//		}
//		else
//			return;
//	}
//}
void sort_print(ListNode* head) {
	ListNode* ptr = head->link;

	printf("단어 \t회수\n");
	while (ptr) {
		printf("%s \t%d\n", ptr->data.word, ptr->data.count);
		ptr = ptr->link;
	}
}
int main()
{
	FILE* fp;
	char word[MAXWORD];
	ListNode* head = NULL;

	head = init(head);

	//fopen_s(&fp, "data.txt", "r");
	fp = fopen("data.txt", "r");
	//while (fscanf_s(fp, "%s", word, sizeof(word)) != EOF) {
	while (fscanf(fp, "%s", word) != EOF) {
		printf("%s ", word);
		insert_node(head, word);
	}
	printf("\n");
	fclose(fp);

	sort_print(head);

	//printf("삭제할 단어(종료:0): ");
	//scanf_s("%s", word, sizeof(word));
	//while (word[0] != '0') {
	//	delete_node(head, word);
	//	sort_print(head);
	//	printf("삭제할 단어: ");
	//	//scanf_s("%s", word, sizeof(word));
	//	scanf("%s", word);
	//}

	return 0;
}
/*
내가 당신을 사랑하는 것은 까닭이 없는 것이 아닙니다 다른 사람들은 나의 홍안만을
사랑하지마는 당신은 나의 백발도 사랑하는 까닭입니다
단어    회수
것은    1
것이    1
까닭이  1
까닭입니다      1
나의    2
내가    1
다른    1
당신은  1
당신을  1
백발도  1
사람들은        1
사랑하는        2
사랑하지마는    1
아닙니다        1
없는    1
홍안만을        1
삭제할 단어(종료:0): 없는
단어    회수
것은    1
것이    1
까닭이  1
까닭입니다      1
나의    2
내가    1
다른    1
당신은  1
당신을  1
백발도  1
사람들은        1
사랑하는        2
사랑하지마는    1
아닙니다        1
홍안만을        1
삭제할 단어: 0
계속하려면 아무 키나 누르십시오 . . .
*/