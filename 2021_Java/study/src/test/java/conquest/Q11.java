package conquest;

import java.util.Scanner;

public class Q11 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		num = sc.nextInt();
		System.out.print(num+"의 절댓값 : ");
		abs(num);
	}
	
	public static void abs(int value) {
		if (value < 0) {
			value = value * -1;
		}
		System.out.println(value);
	}
}
