#include <stdio.h>
#include <malloc.h>

typedef int element;
typedef struct node {
	element data;
	struct node* link;
}node;

int main() {
	int n;
	scanf_s("%d", &n);
	node* head = NULL;
	node* tail = NULL;
	for (int i = 0; i < n; i++) {
		int data;
		scanf_s("%d", &data);
		node *newnode = (node*)malloc(sizeof(node));
		newnode->data = data;
		if (head == NULL) {
			tail = newnode;
			head = tail;
			tail->link = NULL;
		}
		else {
			newnode->data = head->link;
			tail = newnode;
		}
	}
	while (1) {
		if (head == NULL) {
			printf("null");
			break;
		}
		else {
			printf("%d -> ",head->data);
			head = head->link;
		}
	}
}