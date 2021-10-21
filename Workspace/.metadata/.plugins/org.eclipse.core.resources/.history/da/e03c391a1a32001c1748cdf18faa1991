package tngod;

public class Q10 {
	public static void main(String[] args) {
		Student s1 = new Student("홍길동", 1, 1, 100, 60, 76);
		System.out.println("이름 : "+s1.name);
		System.out.println("이름 : "+s1.getTotal());
		System.out.printf("평균 : %.1f",s1.getAverage());
		
	}
}

class Student{
	String name;
	int ban;
	int no;
	int kor;
	int eng;
	int math;
	int total = 0;
	double avg;
	
	Student(String name, int ban,int no,int kor,int eng,int math) {
		this.name = name;
		this.ban=ban;
		this.no=no;
		this.kor=kor;
		this.eng=eng;
		this.math=math;
	}
	
	String Info() {
		total +=kor;
		total +=eng;
		total +=math;
		avg  = total/3.0;
		return name+","+ban+","+no+","+kor+","+eng+","+math+","+total+","+avg;
	}
	
	int getTotal() {
		return total;
	}
	
	double getAverage() {
		return avg;
	}
}
