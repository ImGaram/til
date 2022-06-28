package chapter4.crass;

public class CarTest2 {
	public static void main(String[] args) {
		Car2 car1=new Car2();
		car1.name=car1.carEnrollment();
		car1.color="white";
		car1.seat=5;
		
		Car2 carr2=new Car2();
		carr2.name=carr2.carEnrollment();
		carr2.color="black";
		carr2.seat=18;
		
		car1.CarPrint();
		carr2.CarPrint();
	}
}
