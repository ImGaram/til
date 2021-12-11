package stream;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class KeyboardInputTest {
    public static void main(String[] args) {
        // 1. 스트림 생성 : 입력스트림만 필요...InputStreamReader, BufferedReader
        System.out.println("1. Stream 생성.....");
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader br = new BufferedReader(ir);

        // 2. 읽어들인다...readLine()
        try {
            System.out.println("2. readLine() 으로 읽어드립니다.....");
            String line = br.readLine();
            while(line!=null) { //읽어들인 데이터가 있다면...
                //3. 콘솔로 출력...System.out.println()
                System.out.println("Reading Data : " + line);
                line=br.readLine(); //이 부분이 있어야 반복한다.
            }
        } catch (IOException e) {

        } finally {
            try {
                br.close();
            } catch (IOException e) {
            }
        }
    }
}
