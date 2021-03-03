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

void inorder(TreeNode* root) {
	if (root) {
		inorder(root->left);
		printf("[%d] ", root->key);
		inorder(root->right);
	}
}
void inorder_reverse(TreeNode* root) {
	if (root) {
		inorder_reverse(root->right);
		printf("[%d] ", root->key);
		inorder_reverse(root->left);
	}
}

int main(void) {
	int arr[11] = { 11,3,4,1,56,5,6,2,98,32,23 };
	TreeNode* root = NULL;
	for (int i = 0; i < 11; i++)
		root = insert_node(root, arr[i]);
	inorder(root);
	printf("\n");
	inorder_reverse(root);
	printf("\n");
	return 0;
}