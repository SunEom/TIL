#include <stdio.h>
#include <stdio.h>

typedef struct TreeNode {
	int data;
	struct TreeNode* left, * right;
}TreeNode;

int get_node_count(TreeNode* root) {
	if (root == NULL) return 0;
	if (root->left == NULL && root->right == NULL) return 1;
	else {
		int num1 = get_node_count(root->left);
		int num2 = get_node_count(root->right);
		return 1 + num1 + num2;
	}
}

int get_leaf_count(TreeNode* root) {
	if (root == NULL) return 0;
	if (root->left == NULL && root->right == NULL) return 1;
	else {
		int leaf1 = get_leaf_count(root->left);
		int leaf2 = get_leaf_count(root->right);
		return leaf1 + leaf2;
	}
}

int get_height(TreeNode* root) {
	if (root == NULL) return 0;
	else {
		if (root->left == NULL && root->right == NULL) return 1;
		else {
			int height1 = get_height(root->left);
			int height2 = get_height(root->right);
			return height1 > height2 ? height1 + 1 : height2 + 1;
		}
	}
}