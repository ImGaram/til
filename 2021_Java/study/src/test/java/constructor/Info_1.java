package constructor;

public class Info_1 {
	public static void main(String[] args) {
		PeopleData1 g = new PeopleData1();
	
		g.name="홍길동";
		g.age=22;
		g.s='남';
		
		PeopleData1 d2 = new PeopleData1("김철수", 22, '남');
		
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",g.name,g.age,g.s);
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d2.name,d2.age,d2.s);
	}
}

class PeopleData1 {
	String name;
	int age;
	char s;
	
	PeopleData1() {

	}
	
	PeopleData1(String name) {
		this.name = name;
	}

	
	PeopleData1(String name, int age, char s){
		//매개변수가 있는 생성자
		this.name=name;
		this.age=age;
		this.s=s;
	}
}
