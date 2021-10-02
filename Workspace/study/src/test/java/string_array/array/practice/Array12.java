package string_array.array.practice;

public class Array12 {
	public static void main(String[] args) {
		printSum(1,2,3,4,5);
		printSum(10,20,30);
	}
	
	static void printSum(int...x) {
		int sum = 0;
		for (int i : x) {
			sum+=i;
		}
		System.out.println(sum);
	}
}
