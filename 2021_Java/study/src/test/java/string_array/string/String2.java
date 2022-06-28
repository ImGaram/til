package string_array.string;

public class String2 {
	public static void main(String[] args) {
		String s1 = "pizza";
		String s2 = new String("pizza");
		String s3 = "chicken";
		String s4 = "Pizza";
		
		//문자열 s1과 s2가 가리키는 내용이 같으면 true, 다르면 false
		//s1은 원본 문자열, s2는 비교 문자열
		System.out.println(s1.equals(s2));
		System.out.println(s1.equals(s3));
		System.out.println(s1.equals(s4));
		
		System.out.println(s1.equalsIgnoreCase(s4));
		
		//문자열 s1과 s2가 가리키는 내용이 같으면 0, 다르면 0이 아닌 정수 반환
		System.out.println(s1.compareTo(s2));
		System.out.println(s1.compareTo(s3));
		System.out.println(s1.compareTo(s4));
		
		System.out.println(s1.compareToIgnoreCase(s4));
	}
}
