package collection.stream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Stream1Demo {
    public static void main(String[] args) {
        List<Integer> list = new ArrayList<>();
        List<Integer> gt10 = new ArrayList<>(); // 10보다 큰 원소를 임시로 보관하는 저장 공간
        Random r = new Random();

        for (int i=0; i< 20; i++)
            list.add(r.nextInt(30));      // 0 ~ 29 사이의 무작위 정수 20개를 생성해
                                                // list 컬렉션에 추가

        // Collection을 이용한 방식
        for (int i: list)
            if (i > 10)
                gt10.add(i);

        Collections.sort(gt10);
        System.out.println(gt10);

        // Stream을 이용한 방식
        list.stream().filter(i -> i > 10).sorted()
                .forEach(x-> System.out.print(x+" "));
    }
}
