package chapter4.crass;

class Car1 {
	String name; 
	String color;
	int seat;
	float gas_mileage;
	
	void carPrint() {
		System.out.println("차량번호 :" +name);
		System.out.println("색깔 :" +color);
		System.out.println("좌석 :"+seat+"인승");
		System.out.println("연비 : "+gas_mileage);
		System.out.println();
	}
}
