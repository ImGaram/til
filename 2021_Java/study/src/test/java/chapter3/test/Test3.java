package chapter3.test;

import java.util.Scanner;

public class Test3 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int r=sc.nextInt();
		int h=sc.nextInt();
		
		float one=(float)(3.14*r*r);
		float nul=one*h;
		System.out.println(nul);
	}
}
