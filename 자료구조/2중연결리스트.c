//#include <stdio.h>
//#include <malloc.h>
//
//typedef struct listnode {
//    struct listnode* Firstlink;
//    int data;
//    struct listnde* link;
//}node;
//
//node* head = NULL;
//node* tail = NULL;
//
//void insert(int data, node* newnode);
////void print(node* newnode);
//void del();
//
//int main() {
//    int number = 0;
//    while (1) {
//        scanf_s("%d", &number);
//        node* newnode = (node*)malloc(sizeof(node));
//        newnode->data = number;
//        newnode->link = NULL;
//        newnode->Firstlink = NULL;
//        if (number == -1) {
//            break;
//        }
//        insert(number,newnode);
//        print(newnode);
//    }
//}
//
//void insert(int data, node* newnode) {
//    if (head == NULL) {
//        head = newnode;
//    }
//    else {
//        newnode->Firstlink = tail;  // <--
//        tail->link = newnode;       // -->
//    }
//    tail = newnode;
//}
//
//void print(node* newnode) {
//    node* temp = head;
//    while (1) {
//        if (temp!=NULL) {
//            printf("%d --> ", temp->data);
//            temp = newnode->data;
//        }
//        else {
//            printf("null");
//        }
//    }
//}
//
//void del() {
//
//}


#include<stdio.h>
#include<stdlib.h>

typedef int element;
typedef struct ListNode {
    element data;
    struct ListNode* link;
    struct ListNode* blink;
} node;

node* head = NULL;
node* tail = NULL;

void insertNode(node* newnode) {
    if (head == NULL)
    {
        head = newnode;
        head->blink = NULL;
    }
    else
    {
        newnode->blink = tail;
        tail->link = newnode;
    }
    tail = newnode;
}

void deleteNode() {
    int dN;
    scanf_s("%d", &dN);
    printf("\n");
    node* blconNode = head;
    node* delNode = blconNode;
    node* lconNode = delNode;

    if (dN != 1) {
        for (int i = 1; i <= dN; i++)
        {
            if (i != 1)
                lconNode = delNode;
            delNode = blconNode;
            blconNode = blconNode->link;
            printf("lc : %p d : %p bl : %p\n", lconNode, delNode, blconNode);
        }
        if (blconNode != NULL) {
            lconNode->link = blconNode;
            blconNode->blink = lconNode;
        }
        else {
            lconNode->link = NULL;
        }
    }
    else
    {
        head = head->link;
    }
    free(delNode);
}

int main() {

    while (1) {
        node* newnode = (node*)malloc(sizeof(node));
        scanf_s("%d", &newnode->data);
        if (newnode->data < 0) {
            tail->link = head;
            head->blink = tail;
            printf("\n");
            break;
        }
        insertNode(newnode);
        newnode->link = head;
        printf("%d %p\n\n", newnode->data, tail);
    }
    deleteNode();
    while (1) {
        printf("蔼 : %d 林家 : %p 捞傈 林家 : %p 促澜 林家 : %p\n", head->data, head, head->blink, head->link);
        if (head->link == NULL)
            break;
        head = head->link;
    }
}
