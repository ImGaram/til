package chapter4.test;

public class StudentTest {
	public static void main(String[] args) {
		Student s1=new Student();
		s1.name="홍길동";
		s1.kor=70;
		s1.eng=30;
		s1.math=75;
		s1.print();
		s1.getScore();
	}
}
