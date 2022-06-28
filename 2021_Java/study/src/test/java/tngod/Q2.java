package tngod;

public class Q2 {
	public static void main(String[] args) {
		int[] arr = {5,10,13,22,25};
		int sum=0;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i]%5==0) {
				sum+=arr[i];
			}
		}
		System.out.print("sum = ");
		System.out.println(sum);
	}
}
