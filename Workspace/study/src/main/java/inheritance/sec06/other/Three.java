package inheritance.sec06.other;

import inheritance.sec06.One;

public class Three {
	void print() {
		One o = new One();
//		System.out.println(o.secret);
//		System.out.println(o.roomate);
//		System.out.println(o.child);
		
		// 다른 패키지에 있는 클래스라면 public 멤버만 접근 가능
		System.out.println(o.anybody);
	}
}
