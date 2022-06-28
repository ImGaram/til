package chapter4.VariablesAndMethods;

class MemberCall {
	int x=10;
	static int y=20;
	
	int x2=y;
	//클래스 변수
	static int y2=new MemberCall().x;	//
	
	void instanceMethod() {
		System.out.println(x);
		System.out.println(y);
	}
	
	//클래스 메서드
	static void staticMethod() {
		MemberCall c = new MemberCall();	//
		System.out.println(c.x);
		System.out.println(y);
	}
	
	void instanceMethod2() {
		instanceMethod();
		staticMethod();
	}
	
	static void staticMethod2() {
		MemberCall c = new MemberCall();	//
		c.instanceMethod();
		staticMethod();
	}
}
