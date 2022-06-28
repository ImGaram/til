package chapter4.crass;

public class CarTest1 {
	public static void main(String[] args) {
		Car car1=new Car();
		car1.name="34가 1234";
		car1.color="white";
		car1.seat=5;
		
		Car car2=new Car();
		car2.name="18이 0987";
		car2.color="black";
		car2.seat=8;
		car2.gas_mileage=13.1f;
		
		//car2=car1;
		car1.carPrint();
		car2.carPrint();
	}
}
