package inheritance;

public class Dog extends MyAnimal{
	void Sound() {	// 오버 라이딩
		System.out.println("멍몽");
	}
	void like() {
		System.out.println("산책");
	}
}
