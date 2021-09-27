package string_array.string;

public class String1 {
	public static void main(String[] args) {
		String s1= "Hi, Java!";
		String s2= "Hi, Java!";		// s1과 같은 주소를 가리킴
		String s3 = new String("Hi, Java!");	//새로운 string(새로운 주소)
		String s4 = new String("Hi, Java!");	//새로운 string(새로운 주소)
		
		System.out.println(s1==s2);
		System.out.println(s1==s3);
		System.out.println(s3==s4);
		System.out.println(s3==s4);
		
		s1=s3;
		System.out.println(s1==s3);
	}
}
