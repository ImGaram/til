package inheritance;

public class Inheritance6 {
	public static void main(String[] args) {
		Student s = new Student();
		Person p = new Person();
		
		// s는 Person의 자식이므로 true
		System.out.println(s instanceof Person);
		
		// s는 Object타입 이므로 true
		System.out.println(s instanceof Object);
		
		// s는 Student타입 true
		System.out.println(s instanceof Student);
		
		// p는 Student 타입도 아니고, Student 자식 타입도 아니므로 false
		System.out.println(p instanceof Student);
		
		// s는 String과 관계가 없으므로 에러
//		System.out.println(s instanceof String);
		
		downcast(s);
	}
	
	static void downcast(Person p) {
		if (p instanceof Student) {
			Student s = new Student();
			System.out.println("햐향 타입 변환");
		}
	}
}
