package collection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SuffleDemo {
    public static void main(String[] args) {
        List<Character> list = new ArrayList<>();

        for (char c = 'A'; c <= 'G'; c++) {
            list.add(c); // 문자 A 부터 G 까지 list 컬렉션에 저장
        }   // [A,B,C,D,E,F,G]

        System.out.println("섞기 전: \t"+list);
        Collections.shuffle(list);  // List 컬렉션의 원소를 무작위로 섞는다.
        System.out.println("섞은 후: \t"+list);
    }
}
