#include <stdio.h>
#include <math.h>
#include <stdlib.h>

typedef int element;
typedef struct TreeNode {
	element key;
	struct TreeNode* left, * right;
}TreeNode;

TreeNode* new_node(element key) {
	TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
	node->key = key;
	node->left = node->right = NULL;
	return node;
}

TreeNode* insert_node(TreeNode* root, element key) {
	if (root == NULL) return new_node(key);
	if (root->key > key)
		root->left = insert_node(root->left, key);
	else if (root->key < key)
		root->right = insert_node(root->right, key);

	return root;
}

int get_height(TreeNode* root) {
	if (root == NULL) return 0;
	int num1 = get_height(root->left);
	int num2 = get_height(root->right);
	return  num1 > num2 ? num1 + 1 : num2 + 1;
}

int is_Balanced(TreeNode* root) {
	if (root == NULL) return 1;
	int left = get_height(root->left);
	int right = get_height(root->right);
	int result = abs(left - right) <= 1 ? 1 : 0;
	return result && is_Balanced(root->left) && is_Balanced(root->right);
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

	printf("Height of the tree : %d\n", get_height(root));
	if (is_Balanced(root)) {
		printf("This tree is balanced!\n");
	}
	else {
		printf("This tree is unbalanced\n");
	}
	return 0;
}