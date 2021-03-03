#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_WORD_LENGTH 100
#define MAX_MEANING_LENGTH 200

typedef struct {
	char word[MAX_WORD_LENGTH];
	char meaning[MAX_MEANING_LENGTH];
}element;

typedef struct TreeNode{
	element key;
	struct TreeNode* left, * right;
}TreeNode;

int compare(element e1, element e2) {
	return strcmp(e1.word, e2.word);
}

void display(TreeNode* root) {
	if (root) {
		display(root->left);
		printf("\n");
		printf("Word : %s\n", root->key.word);
		printf("Meaning : %s\n", root->key.meaning);
		printf("\n");
		display(root->right);
	}
}

TreeNode* search(TreeNode* root, element key) {
	TreeNode* p = root;
	while (p) {
		if (compare(p->key, key) > 0)
			p = p->left;
		else if (compare(p->key, key) < 0)
			p = p->right;
		else
			return p;
	}
	return p;
}

TreeNode* new_node(element key) {
	TreeNode* new = (TreeNode*)malloc(sizeof(TreeNode));
	new->key = key;
	new->left = new->right = NULL;
	return new;
}

TreeNode* insert_node(TreeNode* node, element key) {
	if (node == NULL) return new_node(key);
	
	if (compare(node->key, key) > 0)
		node->left = insert_node(node->left, key);
	else if (compare(node->key, key) < 0)
		node->right = insert_node(node->right, key);

	return node;
}

TreeNode* min_value_node(TreeNode* node) {
	TreeNode* temp = node;
	if (temp == NULL) return NULL;
	while (temp->left) temp = temp->left;
	return temp;
}

TreeNode* delete_node(TreeNode* root, element key) {
	if (root == NULL) return root;

	if (compare(root->key, key) > 0)
		root->left = delete_node(root->left, key);
	else if (compare(root->key, key) < 0)
		root->right = delete_node(root->right, key);
	else {
		if (root->left == NULL) {
			TreeNode* temp = root->right;
			free(root);
			return temp;
		}
		else if (root->right == NULL) {
			TreeNode* temp = root->left;
			free(root);
			return temp;
		}
		TreeNode* temp = min_value_node(root->right);
		root->key = temp->key;
		root->right = delete_node(root->right, temp->key);
	}
		return root;
}

void help() {
	printf("\n**** i: 입력 , d: 삭제 , s: 탐색, p: 출력, q: 종료****: ");
}

int main(void) {
	char ch;
	element e;
	TreeNode* root = NULL;
	TreeNode* temp;
	do {
		help();
		ch = getchar();
		getchar();
		switch (ch) {
		case 'i':
			printf("Word : ");
			gets(e.word);
			printf("Meaning : ");
			gets(e.meaning);
			root = insert_node(root, e);
			break;
		case 'd':
			printf("Word : ");
			gets(e.word);
			root = delete_node(root, e);
			break;
		case 's':
			printf("Word : ");
			gets(e.word);
			temp = search(root, e);
			if (temp) {
				printf("Meaning : %s\n", temp->key.meaning);
			}
			else {
				printf("Can not find %s\n", e.word);
			}
			break;
		case 'p':
			display(root);
			break;
		}
	} while (ch != 'q');
	return 0;
}