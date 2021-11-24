package exception;

// 실행 예외2
public class Unchecked2Demo {
    public static void main(String[] args) {
        int[] array = {0,1,2};

        System.out.println(array[3]);   // 범위를 벗어난 인덱스를 사용해 예외를 발생시킨다.사나
    }
}
