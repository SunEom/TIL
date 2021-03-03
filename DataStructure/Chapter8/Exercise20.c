#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
	int key;
	struct TreeNode* left, * right;
}TreeNode;

TreeNode* new_node(int key) {
	TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
	node->key = key;
	node->left = node->right = NULL;
	return node;
}

TreeNode* insert_node(TreeNode* root, int key) {
	if (root == NULL) return new_node(key);
	if (root->key > key)
		root->left = insert_node(root->left, key);
	else if (root->key < key)
		root->right = insert_node(root->right, key);
	return  root;
}

TreeNode* add_one(TreeNode* root) {
	if (root) {
		add_one(root->left);
		root->key += 1;
		add_one(root->right);
	}
}

void display(TreeNode* root) {
	if (root) {
		display(root->left);
		printf("[%d] ", root->key);
		display(root->right);
	}
}

int main(void) {
	TreeNode* root = NULL;
	root = insert_node(root, 11);
	root = insert_node(root, 6);
	root = insert_node(root, 8);
	root = insert_node(root, 19);
	root = insert_node(root, 4);
	root = insert_node(root, 10);
	root = insert_node(root, 5);
	root = insert_node(root, 17);
	root = insert_node(root, 43);
	root = insert_node(root, 49);
	root = insert_node(root, 31);

	display(root);
	printf("\n");
	add_one(root);
	display(root);
	return 0;
}