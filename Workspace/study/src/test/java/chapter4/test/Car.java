package chapter4.test;

class Car {
	int speed;
	boolean power=false;
	float gas_mileage;	//연비
	float car_faul;	//연료
	float distance;	//주행거리
	
	void power() {
		if (power==false) {
			System.out.println("자동차 시동을 켭니다.");
			power=!power;
		}
		else {
			System.out.println("자동차 시동을 끕니다.");
		}
	}
	
	void speedUp() {
		speed+=10;
	}
	void speedDown() {
		speed-=10;
	}
	
	void carPrint() {
		System.out.println("현재 속력 : "+speed);
	}
	
	void fuel_calculation() {
		
		float ny=distance/gas_mileage;
		float nyres=car_faul-ny;
		if (ny > 0) {
			System.out.println("목적지까지 운행 가능합니다. 남은 연료는 "+nyres+"L 입니다.");
		} 
		else {
			System.out.println("연료 부족");
		}		
	}
}
