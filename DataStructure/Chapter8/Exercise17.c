#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
	int key;
	struct TreeNode* left, * right;
}TreeNode;

typedef struct maxmin {
	int max;
	int min;
}MaxMin;


MaxMin get_max_min_node(TreeNode* root) {
	if (root == NULL) {
		MaxMin temp = { -INT_MAX, INT_MAX };
		return temp;
	}
	MaxMin temp = { root->key, root->key };
	if (root->left == NULL && root->right == NULL)
		return temp;
	else {
		MaxMin left = { get_max_min_node(root->left).max, get_max_min_node(root->left).min };
		MaxMin right = { get_max_min_node(root->right).max, get_max_min_node(root->right).min };
		int max = left.max > right.max ? left.max : right.max;
		int min = left.min < right.min ? left.min : right.min;

		max = max > root->key ? max : root->key;
		min = min < root->key ? min : root->key;

		temp.max = max;
		temp.min = min;
		return temp;
	}
}

//			 5
//		3		  2
//	 5    10   12   16
// 2  7       18       23



TreeNode n1 = { 2, NULL, NULL };
TreeNode n2 = { 7, NULL, NULL };
TreeNode n3 = { 5, &n1, &n2 };
TreeNode n4 = { 10, NULL, NULL };
TreeNode n5 = { 3, &n3, &n4 };
TreeNode n6 = { 18, NULL, NULL };
TreeNode n7 = { 12, &n6, NULL };
TreeNode n8 = { 23, NULL, NULL };
TreeNode n9 = { 16, NULL, &n8 };
TreeNode n10 = { 2, &n7, &n9 };
TreeNode n11 = { 5, &n5, &n10 };
TreeNode* root = &n11;

int main(void) {
	MaxMin result = get_max_min_node(root);
	printf("Max : %d\nMin : %d\n", result.max, result.min);
	return 0;
}
