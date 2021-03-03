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
	return root;
}

void display(TreeNode* root) {
	if (root) {
		display(root->left);
		printf("[%d] ", root->key);
		display(root->right);
	}
}

int total_node_value(TreeNode* root) {
	if (root == NULL) return 0;
	return root->key + total_node_value(root->left) + total_node_value(root->right);
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
	printf("Sum of node value : %d\n", total_node_value(root));
	return 0;
}