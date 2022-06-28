package exception;

import java.util.StringTokenizer;

// 실행 예외
public class UnChecked1Demo {
    public static void main(String[] args) {
        String s = "시간은 금이다";
        StringTokenizer st = new StringTokenizer(s);

        while (st.hasMoreElements()){
            System.out.print(st.nextToken()+"+");
        }
        System.out.print(st.nextToken());   // 더 이상 가져올 토큰이 없어 예외를 발생시킨다.
    }
}
