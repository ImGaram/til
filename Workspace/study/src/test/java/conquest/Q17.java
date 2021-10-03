package conquest;

public class Q17 {
	public static void main(String[] args) {
		Car c1 = new Car();
		Car c2 = new Car("blue");
		Car c3 = new Car("black", "auto", 9);
		
		System.out.printf("c1 : %s %s %d\n",c1.color, c1.gearType, c1.door);
		System.out.printf("c2 : %s %s %d\n",c2.color, c2.gearType, c2.door);
		System.out.printf("c3 : %s %s %d\n",c3.color, c3.gearType, c3.door);
	}
}

class Car{
	String color;
	String gearType;
	int door;
	
	Car(){
		this("white", "auto", 4);
	}
	
	public Car(String name) {
		this(name,"auto",4);
	}
	
	Car(String color, String gearType, int door){
		this.color = color;
		this.gearType = gearType;
		this.door = door;
	}
}
