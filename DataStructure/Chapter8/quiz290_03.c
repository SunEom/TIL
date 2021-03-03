#include <stdio.h>
#include <stdlib.h>

typedef struct TreeNode {
	int data;
	struct TreeNode* left, * right;
}TreeNode;

int equal(TreeNode* t1, TreeNode* t2) {
	if (t1 == NULL && t2 == NULL) return 1;
	else if ((t1 == NULL && t2 != NULL) || (t1 != NULL && t2 == NULL)) return 0;
	else {
		if (t1->data == t2->data) return equal(t1->left, t2->left) && equal(t1->right, t2->right);
		else return 0;
	}
}

int main(void) {

//		3
//	1		5
//2		  6	  7
//		9  10

	TreeNode an1 = { 2, NULL, NULL };
	TreeNode an2 = { 1, &an1, NULL };
	TreeNode an4 = { 7, NULL, NULL };
	TreeNode an7 = { 9, NULL, NULL };
	TreeNode an8 = { 10, NULL, NULL };
	TreeNode an3 = { 6, &an7, &an8 };
	TreeNode an5 = { 5, &an3, &an4 };
	TreeNode an6 = { 3 , &an2, &an5 };

	//		3
	//	1		5
	//2		  6	  7
	//		9  10

	TreeNode bn1 = { 2, NULL, NULL };
	TreeNode bn2 = { 1, &bn1, NULL };
	TreeNode bn4 = { 7, NULL, NULL };
	TreeNode bn7 = { 9, NULL, NULL };
	TreeNode bn8 = { 10, NULL, NULL };
	TreeNode bn3 = { 6, &bn7, &bn8 };
	TreeNode bn5 = { 5, &bn3, &bn4 };
	TreeNode bn6 = { 3 , &bn2, &bn5 };

	if (equal(&an6, &bn6)) {
		printf("Two trees are same!\n");
	}
	else {
		printf("Two trees are different!\n");
	}
	return 0;
}