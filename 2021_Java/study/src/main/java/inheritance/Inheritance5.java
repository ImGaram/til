package inheritance;

public class Inheritance5 {
	public static void main(String[] args) {
//		Q1
//		Student s = new Student();
//		Person p = s;
		
//		Q2
//		Person p = new Person();
//		Student s = (Student)p;
		
//		Q3
//		Person p;
//		Student s = new Student();
//		p=s;
//		p.number = 1;	// 오류
//		p.whoami();
		
//		Q4
		Student s = new Student();
		Person p = s;
		Student s2 = (Student)p;
	}
}
