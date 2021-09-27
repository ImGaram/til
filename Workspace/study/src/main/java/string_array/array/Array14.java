package string_array.array;

public class Array14 {
	public static void main(String[] args) {
		Circle c1 = new Circle(10.0);
		Circle c2 = new Circle(10.0);
		
		zero(c1);	// Circle 객체 전달(주소)
		System.out.println(c1.radious);
		
		zero(c2.radious);	// double 형 radious 전달
		System.out.println(c2.radious);
	}
	
	public static void zero(Circle c) {
		c.radious=0.0;
	}
	
	public static void zero(double r) {
		r=0.0;
	}
}


