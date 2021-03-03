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
}

TreeNode* insert_node(TreeNode* root, int key) {
	if (root == NULL) return  new_node(key);
	if (root->key < key)
		root->right = insert_node(root->right, key);
	else if (root->key > key)
		root->left = insert_node(root->left, key);
	return root;
}

void compare(TreeNode* root, int key) {
	if (root == NULL) return;
	if (root->key >= key) compare(root->left, key);
	else if (root->key < key) {
		printf("%d is less than %d\n", root->key, key);
		compare(root->left, key);
		compare(root->right, key);
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

	printf("Enter the number : ");
	scanf("%d", &num);
	compare(root, num);
	return 0;
}