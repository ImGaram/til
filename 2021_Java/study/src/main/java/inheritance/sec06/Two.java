package inheritance.sec06;

public class Two {
	void print() {
		One o = new One();
		// 같은 패키지에 있더라도 다른 객체의 private 멤버에 접근 불가능
		// System.out.println(o.secreat);
		
		// 같은 패키지에 있다면 다른 객체의 private 멤버에 접근 가능
		// 그러나, 자신의 멤버가 아니기 때문에 객체를 생성해야 함
		System.out.println(o.roomate);
		System.out.println(o.child);
		System.out.println(o.anybody);
	}
}
