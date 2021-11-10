#include <stdio.h>
#include <malloc.h>

// 이중연결list
typedef struct listnode {
    struct listnode* Firstlink;
    int data;
    struct listnde* link;
}node;

node* head = NULL;
node* tail = NULL;

void insert(int data, node* newnode);
void right(char move);

int main() {
    int number = 0;
    int d;    //tkrwp
    while (1) {
        scanf_s("%d",&number);
        node* newnode = (node*)malloc(sizeof(node));
        newnode->data = number;
        newnode->link = NULL;
        newnode->Firstlink = NULL;
        if (number==-1)
            break;
        insert(number, newnode);
    }
    node* temp = head;
    char move;
    while (1) {
        printf("움직일 위치(R/L, 종료: N) : ");
        scanf_s("\n%c", &move);
        if (temp->link == NULL || temp->Firstlink == NULL) {
            printf("null\n");
        }
        else if (move == 'R') {
            temp = temp->link;
            printf("지정된 리스트 = %d\n", temp->data);
        }
        else if (move == 'L') {
            temp = temp->Firstlink;
            printf("지정된 리스트 = %d\n", temp->data);
        }
        else if (move =='N')
        {
            break;
        }

    }
    //printlist(temp);
}

// head, tail 연산
void insert(int data, node* newnode) {
    if (head == NULL) {
        head = newnode;
    }
    else {
        tail->link = newnode;
        newnode->Firstlink = tail;
    }
    tail = newnode;
}

// 출력
//void printlist(node* temp) {
//    
//    tlqkf(move);
//}

//void tlqkf(char move) {
//    
//}
