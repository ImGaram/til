package tngod.tngoddhekq;

import java.util.Scanner;

public class Q3오답 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		int sum = 0, totalsum=0;
		
		while (num!=0) {
			sum=num%10;
			num/=10;
			int temp = 1;
			for (int i = sum; i > 0; i--) {
				temp*=i;
			}
			totalsum+=temp;
		}
		System.out.println("totalsum = "+totalsum);
	}
}
