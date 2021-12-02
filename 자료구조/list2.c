//#include <stdio.h>
//#include <malloc.h>
//#include <cstddef>
//
//
//typedef struct node {
//	struct node* front;
//	struct node* back;
//	int data;
//} node;
//
//node* head = NULL;
//node* tail = NULL;
//
//int main() {
//	int data;
//	node* japh = head;
//
//	while (1) {
//		node* newnode = (node*)malloc(sizeof(node));	// 새로운 노드
//		scanf_s("%d", &data);
//		if (data < 0) break;
//		if (head == NULL) {
//			head = newnode;	// head 지정
//			head->front = NULL;	// 첫번째 노드의 front null
//		}
//		else {
//			japh = newnode->front;
//		}

//	}
//}

#include<stdio.h>
#include <malloc.h>

typedef struct Node {
    struct Node* front, * back;
    int data;
}Node;
int main() {
    int n;//반복횟수
    scanf_s("%d", &n);
    Node* head = NULL;
    Node* tail = NULL;
    for (int i = 0; i < n; i++) {
        int data;
        scanf_s("%d", &data);
        Node* prev = tail;
        tail = (Node*)malloc(sizeof(Node));
        tail->back = NULL;
        tail->front = NULL;
        tail->data = data;
        if (head == NULL) {
            head = tail;
            continue;
        }
        prev->back = tail;
        tail->front = prev;
    }
    while (1) {
        if (head == NULL) {
            printf("NULL");
            break;
        }
        printf("%d->", head->data);
        head = head->back;
    }
    printf("\n");
    while (tail != NULL) {
        if (tail == NULL) {
            printf("NULL");
            break;
        }
        printf("%d->", tail->data);
        tail = tail->front;
    }
}