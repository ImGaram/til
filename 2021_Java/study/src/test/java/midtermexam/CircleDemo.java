package midtermexam;

public class CircleDemo {
	static double radius;
	static double findArea() {
		return 3.14*radius*radius;
	}
	static void show(double x, double y) {
		System.out.printf("반지름 = %.1f, 넓이 = %.1f\n",x,y);
	}
	public static void main(String[] args) {
		CircleDemo m = new CircleDemo();
		m.radius = 10.0;
		m.show(m.radius, m.findArea());
	}
}
