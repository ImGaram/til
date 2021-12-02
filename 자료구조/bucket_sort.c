#include <stdio.h>
#include <stdlib.h>

void BucketSort(int* arr, int n)
{
    int i, j = 0;
    int* count = (int*)malloc(sizeof(int) * n); // 버킷

    // count 초기화
    for (i = 0; i < n; i++)
        count[i] = 0;

    // arr의 중복되는 수 카운트
    for (i = 0; i < n; i++) {
        count[arr[i]]++;
    }

    // 재정렬
    for (i = 0; i < n; i++)
    {
        for (; count[i] > 0; count[i]--) {  // count i번째 인덱스가 0이 될때가지 반복
            arr[j++] = i;
        }
    }
}

void Output(int* arr, int n)    // 배열 출력
{
    int i;

    for (i = 0; i < n; i++)
    {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main()
{
    int arr[] = { 1, 3, 4, 6, 4, 2, 9, 1, 2, 9 };
    int n = 10;
    int i;

    printf("변경 전 : ");
    Output(arr, n);

    BucketSort(arr, n);

    printf("변경 후 : ");
    Output(arr, n);

    return 0;
}