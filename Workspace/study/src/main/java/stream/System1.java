package stream;

import java.io.InputStream;
import java.io.PrintStream;

// 스트림 : 데이터를 운반하는데 사용되는 연결 통로
// 입력과 출력을 동시에 수행하려면 입력 스트림과 출력 스트림이 필요하다
// 스트림은 단방향 통신만 가능하기 때문에 하나의 스트림으로 입력과 출력을 동시에 할 수 없다.
// 먼저 보낸 데이터를 먼저 받게 되있으며 queue 와 같은 FIFO 형식이다.
//데이터 근원지를 Source, 데이터 종착점을 Sink, 연결한 것을 Stream 이라 하면
//Source - 입력 스트림 - 출력 스트림 - Sink로 연결된다.
public class System1 {
    // 표준 입출력
    public static PrintStream out;  // 표준 출력 스트림
    public static InputStream in;   // 표준 입력 스트림
    public static PrintStream err;  // 표준 에러 스트림
    // 입력 클래스
    // 1) System.in : 한 바이트씩 읽어 들인다. 여러 바이트로 된 문자를 읽으려면 보조 스트림(InputStreamReader)을 사용해야 한다.
    // 2) Scanner : java.util 패키지에 있는 입력 클래스. 문자뿐 아니라 정수, 실수 등 다양한 자료형을 읽을 수 있다.
    // Scanner 는 생성자가 다양해서 여러 소스로부터 자료를 읽을 수 있다
}
