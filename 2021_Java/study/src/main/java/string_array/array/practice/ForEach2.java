package string_array.array.practice;

public class ForEach2 {
	public static void main(String[] args) {
		int[] one2five = {0,1,2,3,4};
		int sum = 0;
		
		for (int i = 0; i < one2five.length; i++) {
			one2five[i]++;
		}
		
		for (int i : one2five) {
			sum+=i;
		}
		System.out.println("평균 ="+sum / 5.0);
	}
}
