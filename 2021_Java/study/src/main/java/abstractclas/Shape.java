package abstractclas;

// 추상 메서드를 
abstract class Shape { 
	// 예제
	double pi = 3.14;		// 추상 클래스도 멤버 필드를 포함할수 있다
	abstract void draw();	// 추상 메서드는 본체가 없다
	
	public double findArea() {	// 추상 클래스도 구현 매서드를 포함할 수 있다
		return 0.0;
	}
}
