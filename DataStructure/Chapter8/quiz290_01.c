#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
	int data;
	struct TreeNode* left, * right;
}TreeNode;

int get_node_count(TreeNode* root) {
	if (root == NULL) return 0;
	else {
		if (root->left == NULL && root->right == NULL) return 1;
		else {
			int num1 = get_node_count(root->left);
			int num2 = get_node_count(root->right);
			return num1 + num2 + 1;
		}
	}
}

int get_leaf_count(TreeNode* root) {
	if (root == NULL) return 0;
	else {
		if (root->left == NULL && root->right == NULL) return 1;
		else {
			int num1 = get_leaf_count(root->left);
			int num2 = get_leaf_count(root->right);
			return  num1 + num2;
		}
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

	printf("Number of node : %d\n",get_node_count(&n6));
	printf("Number of leaf node : %d\n", get_leaf_count(&n6));
	printf("Height of the tree : %d\n", get_height(&n6));

	return 0;

}