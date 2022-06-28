package chapter3.test;

import java.util.Scanner;

public class Test2 {
	@SuppressWarnings("resource")
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		
		System.out.printf("%d 의 제곱: %d",a,a*a);
	}
}
