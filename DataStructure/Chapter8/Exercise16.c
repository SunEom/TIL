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

int get_one_child_node_count(TreeNode* root) {
	if (root == NULL) return 0;
	if (root->left == NULL && root->right == NULL) return 0;
	else if (root->left == NULL && root->right != NULL) {
		return get_one_child_node_count(root->left) + 1;
	}
	else if (root->left != NULL && root->right == NULL) {
		return get_one_child_node_count(root->right) + 1;
	}
	else {
		return get_one_child_node_count(root->left) + get_one_child_node_count(root->right);
	}
}

int main(void) {
	int num;
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

	printf("Number of one child node : %d\n", get_one_child_node_count(root));
	return 0;
}