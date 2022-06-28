package study.inherience;

public class OverPractice {
	
}

class Parents {
	void parentMethod() {}	// 정의
	void parentMethod(int i) {}	// 오버로딩
}

class Child extends Parents {
	void parentMethod() {}
	void parentMethod(int i) {}
	
	void childMethod() {}
	void childMethod(int i) {}
//	void childMethod() {}	// 오류(정의된걸 또 정의함)
}
