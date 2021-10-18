package inheritance.sec06.other;

import inheritance.sec06.One;

public class One2 extends One {
	void print() {
		// 자식 클래스라도 부모와 다른 패키지에 있다면 private와 default 멤버에 접근 불가능
		//System.out.println(secret);
		// System.out.println(roomate);
		
		System.out.println(child);
		System.out.println(anybody);
	}
}
