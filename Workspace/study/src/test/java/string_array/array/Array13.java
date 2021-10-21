package string_array.array;

public class Array13 {
	public static void main(String[] args) {
		Circle1[] c = new Circle1[5];
		for (int i = 0; i < c.length; i++) {
			c[i] = new Circle1(i+1.0);
			System.out.printf("반지름 : %.1f, 넓이 : %.2f\n",c[i].radious, c[i].findArea());
		}
	}
}

class Circle1{
	double radious;
	
	public Circle1(double radious) {
		this.radious=radious;	// this => 중복 구분
	}
	
	double findArea() {
		return 3.14 * radious * radious;
	}
}
