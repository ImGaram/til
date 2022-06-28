package constructor.practice;

public class People {
	public static void main(String[] args) {
		PeopleData1 d1=new PeopleData1();
		PeopleData1 d2=new PeopleData1("홍길동");
		PeopleData1 d3=new PeopleData1("김철수",15,'남');
		
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d1.name,d1.age,d1.gender);
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d2.name,d2.age,d2.gender);
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d3.name,d3.age,d3.gender);
	}
}

class PeopleData1{
	String name;
	int age;
	char gender;
	
	PeopleData1() {
		this("없음", 0, '-');
	}

	public PeopleData1(String name) {
		this(name, 18, '남');
	}


	PeopleData1(String name, int age, char gender){
		this.name=name;
		this.age=age;
		this.gender=gender;
	}
}
