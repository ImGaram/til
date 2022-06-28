package abstractclas;

// 추상 클래스
// 선언 방법
abstract class Abc01 {
	// 추상 클래스에는 꼭 항상 하나 이상의 추상 메서드를 포함한다. 
	// 추상 메서드
	// 메서드 본체가 없다
	abstract int Abc();	// 꼭 세미콜론으로 끝나야 한다
	public abstract int Abcc();
}

public class Ab01 {
	public static void main(String[] args) {
		// 추상 클래스는 인스턴스를 만들수 없다
//		Abc01 s = new Abc01;
	}
}
