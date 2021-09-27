package constructor.initialization_of_variables;

public class Ex5 {
	static int total;
	static {
		System.out.println("전 total = "+total);
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum+=i;
		}
		total=sum;
	}
	
	public static void main(String[] args) {
		System.out.println("후 total = "+total);
	}
}
