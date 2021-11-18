#include <stdio.h>


int main() {
    int arr[101] = { 0 };
    int* top = arr;
    while (1) {
        char* order[300];
        scanf("%s", order);
        if (order == "push") {
            int data;
            scanf("%d", &data);
            top += 1;
            top = data;
        }
        else if (order == "pop") {
            top--;
        }
        else if (order == "top") {
            printf("%d\n", *top);
        }
        else if (order == "empty") {
            if (top == arr) {
                printf("비었음\n");
            }
            else
                printf("비지 않음\n");
        }
    }
}