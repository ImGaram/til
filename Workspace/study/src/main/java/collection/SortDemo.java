package collection;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class SortDemo {
    public static void main(String[] args) {
        String[] s = {"나는","조국","대한민국을","사랑합니다."};
        List<String> list = Arrays.asList(s);   // 배열을 list로 번환

        // reserveOrder는 값이 들어가지 않고, reserve는 list가 들어가햐 한다.
        Collections.sort(list, Collections.reverseOrder()); // list를 역방향으로 정렬
        System.out.println(list);

        Collections.reverse(list);  // list를 역방향으로 정렬
        System.out.println(list);
    }
}
