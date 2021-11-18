#include <stdio.h>

int main() {
	int arr[101] = { 0 };
	int* front, * back;
	front = arr;
	back = arr;
	while (1) {
		int order;
		scanf_s("%d", &order);
		if (order == 1) {	// push
			scanf_s("%d", back);
			back++;
		}
		else if (order == 2) {	// pop
			front++;
		}
		else if (order == 3) {	// empty
			if (front == back) {
				printf("true");
			}
			else
				printf("false");
		}
		else if (order == 4) {	// front
			printf("%d", front);
		}
		else if (order == 5) {	// back
			printf("%d", back - 1);
		}
	}
}