#include <stdio.h>
#include <malloc.h>

typedef int element;
typedef struct node {
	struct node* front, * end;
	element data;
} Node;

node* head = NULL;
node* newnode = NULL;

int main() {
	int data;

	while (1) {
		scanf_s("%d",&data);
		if (data<0)
			break; 

		// 노드 생성
		node* newnode = (node*)malloc(sizeof(node));
		if (head==NULL)	{
			head = newnode;
			newnode = head;
			continue;
		}
		// 노드를 노드끼리 잇는 화살표 생성
		newnode->end = newnode;
		newnode->front = newnode;
		newnode = newnode;
	}

	// 출력
	while (1) {
		if (head == NULL) break;
		printf("%d ->", head->data);
		head = head->end;
	}
}