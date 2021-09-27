package constructor.initialization_of_variables;

public class Ex7 {
	public static void main(String[] args) {
		new Slass();	// x증가
		new Slass();	// x증가
		
		Slass s=new Slass();	// y증가
		
		System.out.println(Slass.x);
		System.out.println(s.y);
	}
}

class Slass{
	static int x;
	int y;
	
	Slass(){
		x++;
		y++;
	}
}
