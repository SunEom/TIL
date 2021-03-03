#include <stdio.h>
#include <stdlib.h>

typedef int element;
typedef struct TreeNode {
	element key;
	struct TreeNode* left, * right;
}TreeNode;

TreeNode* search(TreeNode* root, element key) {
	if (root == NULL) return NULL;
	if (root->key < key)
		search(root->right, key);
	else if (root->key > key)
		search(root->left, key);
	else return root;
}

TreeNode* new_node(element key) {
	TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
	node->key = key;
	node->left = node->right = NULL;
	return node;
}

TreeNode* insert_node(TreeNode* root, element key) {
	if (root == NULL) return new_node(key);
	if (root->key < key)
		root->right = insert_node(root->right, key);
	else if (root->key > key)
		root->left = insert_node(root->left, key);
	
	return root;
}

TreeNode* min_value_node(TreeNode* root) {
	TreeNode* current = root;
	if (current == NULL) return current;
	while (current->left) current = current->left;
	return current;
}

TreeNode* delete_node(TreeNode* root, element key) {
	if (root == NULL) return root;

	if (root->key < key)
		root->right = delete_node(root->right, key);
	else if (root->key > key)
		root->left = delete_node(root->left, key);
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
		root->right = delete_node(root->right, key);
	}
	return root;
}

void inorder(TreeNode* root) {
	if (root) {
		inorder(root->left);
		printf("[%d]->", root->key);
		inorder(root->right);
	}
}

int main(void) {
	TreeNode* root = NULL;
	TreeNode* tmp = NULL;

	root = insert_node(root, 30);
	root = insert_node(root, 20);
	root = insert_node(root, 10);
	root = insert_node(root, 40);
	root = insert_node(root, 50);
	root = insert_node(root, 60);

	printf("Result of inorder for binary search tree \n");
	inorder(root);
	printf("\n\n");
	if (search(root, 30)) {
		printf("Find 30 in binary search tree\n");
	}
	else {
		printf("Can not find 30 in binary search tree\n");
	}
	return 0;
}