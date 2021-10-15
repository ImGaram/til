package inheritance;

class Point {
	int x,y;
	
	Point(int x, int y){
		// super();
		this.x=x;
		this.y=y;
	}
	
	void getLocation() {
		System.out.println("x : "+x+"y : "+y);
	}
}

class Point3D extends Point {
	int z;
	
	Point3D(){
		this(10,20,30);
	}
	
	Point3D(int x,int y, int z){
		super(x,y);
		this.z=z;
	}
	
	void getLocation() {
		System.out.println("x : "+x+", y : "+y+", z : "+z);
	}
}

public class Inheritance3 {
	public static void main(String[] args) {
		Point3D p1 = new Point3D();
		p1.getLocation();
		Point3D p2 = new Point3D();
		p2.getLocation();
	}
}

