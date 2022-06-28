package constructor.practice;

public class People {
	public static void main(String[] args) {
		PeopleData d1=new PeopleData();
		PeopleData d2=new PeopleData("홍길동");
		PeopleData d3=new PeopleData("김철수",15,'남');
		
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d1.name,d1.age,d1.gender);
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d2.name,d2.age,d2.gender);
		System.out.printf("이름 : %s, 나이 : %d, 성별 : %c\n",d3.name,d3.age,d3.gender);
	}
}

class PeopleData{
	String name;
	int age;
	char gender;
	
	PeopleData() {
		this("없음", 0, '-');
	}

	public PeopleData(String name) {
		this(name, 18, '남');
	}


	PeopleData(String name, int age, char gender){
		this.name=name;
		this.age=age;
		this.gender=gender;
	}
}
