#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
	char name[10];
	char pnum[20];
}element;

typedef struct  TreeNode {
	element key;
	struct TreeNode* left, * right;
}TreeNode;

int compare(element e1, element e2) {
	return strcmp(e1.name, e2.name);
}

TreeNode* new_node(element key) {
	TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
	node->key = key;
	node->left = node->right = NULL;
	return node;
}

TreeNode* insert_node(TreeNode* root, element key) {
	if (root == NULL) return  new_node(key);
	if (compare(root->key, key) > 0)
		root->left = insert_node(root->left, key);
	else if (compare(root->key, key) < 0)
		root->right = insert_node(root->right, key);
	return root;
}

TreeNode* search(TreeNode* root, element key) {
	if (root == NULL) return  NULL;
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

TreeNode* get_min_value(TreeNode* root) {
	TreeNode* current = root;
	if (current == NULL) return current;
	while (current->left) current = current->left;
	return current;
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
		TreeNode* temp = get_min_value(root->right);

		root->key = temp->key;
		root->right = delete_node(root->right, temp->key);
	}
	return root;
}

void help() {
	printf("»ðÀÔ(i), Å½»ö(s), »èÁ¦(d), Á¾·á(q) : ");
}

int main(void) {
	TreeNode* root = NULL;
	char ch;
	element friend;
	do {
		help();
		ch = getchar();
		getchar();
		switch (ch) {
		case 'i':
			printf("Friend's name : ");
			gets(friend.name);
			printf("Friend's phone number : ");
			gets(friend.pnum);
			root = insert_node(root, friend);
			break;
		case 's':
			printf("Friend's name : ");
			gets(friend.name);
			TreeNode* temp = search(root, friend);
			if (temp) {
				printf("%s's phone number : %s\n", temp->key.name, temp->key.pnum);
			}
			else {
				printf("Can not find %s\n", friend.name);
			}
			break;
		case 'd':
			printf("Friend's name : ");
			gets(friend.name);
			root = delete_node(root, friend);
			break;
		case 'q':
			break;
		}
	} while (ch != 'q');
	return 0;
}