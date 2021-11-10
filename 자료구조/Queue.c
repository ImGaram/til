#include <stdio.h>
#include <stdlib.h>
#define MAX_SIZE 100

//Q
//큐를 구조체로 선언
typedef int element;
typedef struct {
	element queue[MAX_SIZE];
	int front, rear;
}queueType;

//포화생태, 공백상태 error 처리
void error(char* message) {
	fprintf(stderr, "%s\n", message);
	exit(1);
}

//초기화 함수
void init(queueType* q) {
	q->front = q->rear = 0;
	//queue와 rear가 0을 가리킴
}

//삽입 함수
void enqueue(queueType* q, element item) {
	if ((q->rear + 1) % MAX_SIZE == q->front) {
		error("큐가 포화 상태임");
	}
	q->rear = (q->rear + 1) % MAX_SIZE;
	q->queue[q->rear] = item;
}

//삭제 함수
element dequeue(queueType* q) {
	if (q->front==q->rear)
	{
		error("큐가 공백 상태입니다");
	}
	q->front = (q->front + 1) % MAX_SIZE;
	return q->queue[q->front];
}

int main(void) {
	queueType q;
	init(&q);
	enqueue(&q, 1);
	enqueue(&q, 2);
	enqueue(&q, 3);
	enqueue(&q, 4);
	enqueue(&q, 5);
}