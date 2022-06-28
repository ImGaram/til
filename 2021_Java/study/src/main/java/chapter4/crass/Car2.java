package chapter4.crass;

import java.util.Scanner;

class Car2 {
	String name;
	String color;
	int seat;
	
	public String carEnrollment(){
		Scanner sc= new Scanner(System.in);
		name=sc.nextLine();
		return name;		
	}
	
	void CarPrint() {
		System.out.println("차량번호 :" +name);
		System.out.println("색깔 :" +color);
		System.out.println("좌석 :"+seat+"인승");
		System.out.println();
	}
}
