package chapter4.test;

public class Car1Test {
	public static void main(String[] args) {
		Car c1=new Car();
		c1.gas_mileage=14.3f;
		c1.car_faul=9.2f;
		c1.distance= 90.5f;
		c1.fuel_calculation();
		
		c1.power();
		c1.speed=50;
		c1.speedDown();
		c1.carPrint();
		c1.power();
	}
}
