package tngod.tngoddhekq;

public class Q10오답 {
	public static void main(String[] args) {
		Student1 s = new Student1("홍길동", 1, 1, 100, 60, 76);
		System.out.println("이름  :"+s.name);
		System.out.println("총점  :"+s.getTotal());
		System.out.printf("평균 : %.1f",s.getAverage());
	}
}

class Student {
	String name;
	int ban;
	int no;
	int kor;
	int eng;
	int math;
	int total = 0;
	float avg;
	
	
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
		avg  = (float)(total/3.0);
		return name+","+ban+","+no+","+kor+","+eng+","+math+","+total+","+avg;
	}
	
	int getTotal() {
		total +=kor;
		total +=eng;
		total +=math;
		return total;
	}
	
	float getAverage() {
		avg  = (float)(total/3.0);
		return avg;
	}
}

class Student1{
	String name;
	int ban;
	int no;
	int kor;
	int eng;
	int math;
	int total = 0;
	float avg;
	
	Student1(String name, int ban,int no,int kor,int eng,int math) {
		this.name = name;
		this.ban=ban;
		this.no=no;
		this.kor=kor;
		this.eng=eng;
		this.math=math;
	}
	
	int getTotal() {
		total +=kor;
		total +=eng;
		total +=math;
		return total;
	}
	
	float getAverage() {
		avg  = (float)(total/3.0);
		return avg;
	}
}

