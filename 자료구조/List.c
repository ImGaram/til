#include <stdio.h>
#include <malloc.h>


void dolong(num);
void insert(data, newnode);
void dolong2(num);
void del(int idx);
void sunhue(int cnt);   // 순회

// 연결list
typedef struct listnode {
    int data;
    struct listnde* link;
}Node;

Node* head = NULL;
Node* newnode = NULL;
int main() {
    int number;
    int d;    //삭제
    while (1) {
        scanf_s("%d", &number);
        Node* newnode = (Node*)malloc(sizeof(Node));
        newnode->data = number;
        newnode->link = NULL;
        if (number == -1) {
            break;
        }
        insert(number, newnode);
    }
    printf("삭제할 수 : ");
    scanf_s("%d", &d);
    del(d);
    int sm; //순회할 수
    printf("순회할 수 : ");
    scanf_s("%d", &sm);
    sunhue(sm);
    //dolong2(head);
}

// head, tail 연산
void insert(int data, Node* newnode) {
    if (head == NULL) {
        head = newnode;    // 새로운 node
    }
    else {
        newnode->link = newnode;
    }
    newnode = newnode;
    newnode->link = head;
}

void sunhue(int cnt) {  // 순회
    Node* temp = head;
    for (int i = 0; i < cnt - 1; i++) {
        temp = temp->link;
    }
    printf("%d", temp->data);
}

// 리스트 삭제
void del(int idx) {
    if (idx == 0) {
        Node* temp = head;
        head = head->link;
        newnode->link = head;
        free(temp);
    }
    else {
        Node* sak = head;    // 삭제할 위치
        Node* jjaphead = head;
        for (int i = 0; i < idx; i++) {
            sak = sak->link;
        }
        for (int i = 0; i < idx - 1; i++) {
            jjaphead = jjaphead->link;    // 굿 dd
        }
        jjaphead->link = sak->link;
        free(sak);
    }

}

// 출력
void dolong2(Node* head) {
    if (head != NULL) {
        printf("%d -> ", head->data);
        dolong2(head->link);
    }
    else {
        printf("null");
        return;
    }
}