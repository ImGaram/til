package chapter4.VariablesAndMethods;

class MemberCall1 {
	int x=10;
	static int y=20;
	
	int x2=y;
	//클래스 변수
	static int y2=new MemberCall1().x;	//
	
	void instanceMethod() {
		System.out.println(x);
		System.out.println(y);
	}
	
	//클래스 메서드
	static void staticMethod() {
		MemberCall1 c = new MemberCall1();	//
		System.out.println(c.x);
		System.out.println(y);
	}
	
	void instanceMethod2() {
		instanceMethod();
		staticMethod();
	}
	
	static void staticMethod2() {
		MemberCall1 c = new MemberCall1();	//
		c.instanceMethod();
		staticMethod();
	}
}
