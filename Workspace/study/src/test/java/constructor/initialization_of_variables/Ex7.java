package constructor.initialization_of_variables;

public class Ex7 {
	public static void main(String[] args) {
		new Slass1();	// x증가
		new Slass1();	// x증가
		
		Slass1 s=new Slass1();	// y증가
		
		System.out.println(Slass1.x);
		System.out.println(s.y);
	}
}

class Slass1{
	static int x;
	int y;
	
	Slass1(){
		x++;
		y++;
	}
}
