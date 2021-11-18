#include <stdio.h>
#define STACK_SIZE 5
typedef int element;
element stack[STACK_SIZE];
int top = -1;

//스택 구현
//스택 삽입
void push(element item) {
	if (top >= STACK_SIZE) {
		printf("Stack is Full!\n");
		return;
	}
	else {
		stack[++top] = item;
	}
}

//스택 삭제
element pop() {
	if (top == -1) {
		printf("Stack is Empty!\n");
		return 0;
	}
	else {
		return stack[top--];
	}
}

//스택 조회
element peek() {
	if (top == -1) {
		printf("Stack is Empty!\n");
		return 0;
	}
	else {
		return stack[top];
	}
}

int main() {
	push(30);
	push(40);
	push(50);
	printf("%d\n", stack[top]);
	pop(50);
	pop(40);
	printf("%d\n", stack[top]);
	push(60);
	push(70);
	printf("%d", stack[top]);
}