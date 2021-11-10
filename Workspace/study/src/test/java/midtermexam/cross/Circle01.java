package midtermexam.cross;

public class Circle01 {
	public static void main(String[] args) {
		Circle c1 = new Circle();
		Circle c2 = new Circle();
		
		c1.radious = 10.0;
		c2.radious = 5.5;
		
		zero(c1);
		System.out.println(c1.radious);
		zero(c2.radious);
		System.out.println(c2.radious);
	}
	
	public static void zero(Circle c) {
		c.radious = 0.0;
	}
	public static void zero(double d) {
		d = 0.0;
	}
}

class Circle{
	double radious;
	
	double findArea() {
		return 3.14*radious*radious;
	}
}
