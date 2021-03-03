#include <stdio.h>
#include <stdlib.h>
typedef struct TreeNode {
	int data;
	struct TreeNode* left, * right;
}TreeNode;

int cal_dir_size(TreeNode* root) {
	if (root == NULL) return 0;
	if (root->left == NULL && root->right == NULL) return root->data;
	else {
		int sub1 = cal_dir_size(root->left);
		int sub2 = cal_dir_size(root->right);
		return root->data + sub1 + sub2;
	}
}

int main(void) {
	TreeNode n4 = { 500, NULL, NULL };
	TreeNode n5 = { 200, NULL, NULL };
	TreeNode n3 = { 100, &n4, &n5 };
	TreeNode n2 = { 50, NULL, NULL };
	TreeNode n1 = { 0, &n2, &n3 };

	printf("Size of Dir : %d\n", cal_dir_size(&n1));
	return 0;
}