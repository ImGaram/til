package conquest;

public class Q06 {
	public static void main(String[] args) {
		String arr = "12345";
		int sum = 0;
		
		for (int i = 0; i < arr.length(); i++) {
			sum+=arr.charAt(i)-'0';
		}
		System.out.print("sum = ");
		System.out.println(sum);
	}
}
