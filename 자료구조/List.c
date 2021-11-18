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
}node;

node* head = NULL;
node* tail = NULL;
int main() {
    int number;
    int d;    //삭제
    while (1) {
        scanf_s("%d", &number);
        node* newnode = (node*)malloc(sizeof(node));
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
void insert(int data, node* newnode) {
    if (head == NULL) {
        head = newnode;    // 새로운 node
    }
    else {
        tail->link = newnode;
    }
    tail = newnode;
    tail->link = head;
}

void sunhue(int cnt) {  // 순회
    node* temp = head;
    for (int i = 0; i < cnt - 1; i++) {
        temp = temp->link;
    }
    printf("%d", temp->data);
}

// 리스트 삭제
void del(int idx) {
    if (idx == 0) {
        node* temp = head;
        head = head->link;
        tail->link = head;
        free(temp);
    }
    else {
        node* sak = head;    // 삭제할 위치
        node* jjaphead = head;
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
void dolong2(node* head) {
    if (head != NULL) {
        printf("%d -> ", head->data);
        dolong2(head->link);
    }
    else {
        printf("null");
        return;
    }
}