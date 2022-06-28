package stream;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

// 파일에 있는 내용을 읽어서 콘솔로 출력
public class FileReadingTest {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new FileReader("input.txt"));
        try {
            String line = "";
            while ((line = br.readLine())!=null)
                System.out.println(line);
        } finally {
            br.close();
        }
    }
}
