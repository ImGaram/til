package interfacee;

public interface Operation {
	int add(int a,int b);			// 추상 메서드
	int multiplicate(int a,int b);	// abstract 키워드가 생략됨
	int divide(int a, int b);
	int minus(int a, int b);
	default int operation(int a,int b) {
		return a+b;
	}
	static void print() {
		System.out.println("hello world!");
	}
}
