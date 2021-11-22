package collection;

import java.util.Collections;
import java.util.List;
import java.util.Arrays;

public class SearchDemo {
    public static void main(String[] args) {
        String[] s = {"황금을","돌","같이","보라"};
        List<String> list = Arrays.asList(s);

        Collections.sort(list); // 리스트 정렬
        System.out.println(list);
        int i = Collections.binarySearch(list,"돌"); // 리스트에서 "돌" 문자열인 원소의 인덱스를 찾는다.
        System.out.println(i);
    }
}
