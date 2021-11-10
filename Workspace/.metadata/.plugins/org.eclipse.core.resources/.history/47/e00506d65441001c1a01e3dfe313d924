package abstractclas;

// 추상 클래스의 자식 클래스
class Circle extends Shape {
	int radius;
	
	public Circle(int radius) {
		this.radius = radius;
	}
	
	public void draw() {	// 부모 클래스에서 추상 메서드로 선언했으므로 자식 클래스에서 반드시 구현해야 함
		System.out.println("원을 그리다.");
	}
	public double findArea() {		// 부모 클래스의 메서드 오버라이딩
		return pi * radius * radius;	// pi : 부모 클래스에서 물려받은 변수
	}
}
