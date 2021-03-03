#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
	int data;
	struct TreeNode* left, * right;
}TreeNode;

int get_non_terminal_count(TreeNode* root) {
	if (root == NULL) return 0;
	else {
		if (root->left == NULL && root->right == NULL) return 0;
		else {
			int num1 = get_non_terminal_count(root->left);
			int num2 = get_non_terminal_count(root->right);
			return num1 + num2 + 1;
		}
	}
}

int main(void) {
//		3
//	1		5
//2		  6	  7
//		9  10
	TreeNode n1 = { 2, NULL, NULL };
	TreeNode n2 = { 1, &n1, NULL };
	TreeNode n4 = { 7, NULL, NULL };
	TreeNode n7 = { 9, NULL, NULL };
	TreeNode n8 = { 10, NULL, NULL };
	TreeNode n3 = { 6, &n7, &n8 };
	TreeNode n5 = { 5, &n3, &n4 };
	TreeNode n6 = { 3 , &n2, &n5 };

	printf("Number of non-terminal node : %d\n", get_non_terminal_count(&n6));
	return 0;
}