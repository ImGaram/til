package collection.stream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class IteratorDemo {
    public static void main(String[] args) {
        List<String> list = new ArrayList<>();
        list.add("다람쥐");
        list.add("개구리");
        list.add("나비");

        Iterator<String> iterator = list.iterator();    // list에서 객체를 가져와
        while (iterator.hasNext())                      // list 컬렉션의 모든 원소를 출력한다
            System.out.print(iterator.next() + "\t");
        System.out.println();

        Collections.sort(list); // list의 원소 정렬

        while (iterator.hasNext())
            System.out.print(iterator.next() + ",\t");  // 이미 사용한 반복자로
        System.out.println();                           // list 컬렉션의 모든 원소를 출력한다

        iterator = list.iterator();
        while (iterator.hasNext())                          // list에서 iterator 객체를
            System.out.print(iterator.next() + "->\t");     // 다시 가져와서 list 컬렉션의 모든 원소를 출력한다
    }
}
