package inheritance;

public class Inheritance8 {
	
	public static void main(String[] args) {
		MyAnimal a1;
		Dog d1 = new Dog();
		Dog d2;
		
		// 업캐스팅
		a1 = (MyAnimal)d1;	// 자식을 부모타입으로 변경, a1 = d1; 가능(자동 타입 변환)
		a1.Sleep();
		a1.Sound();
//		a1.like(); // 오류 : 부모가 가지고 있지 않은 매서드 like(자식꺼)
		
		// 다운캐스팅
		d2 = (Dog)a1;	// 부모를 자식 타입으로 변경, 생략 안됨 (강제 타입 변환)
		d2.Sleep();
		d2.Sound();
		d2.like();
	}
	
}
