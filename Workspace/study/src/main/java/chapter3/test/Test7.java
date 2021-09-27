package chapter3.test;

import java.util.Scanner;

public class Test7 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		if (a%4==0 && a%5==0) {
			System.out.println(true);
		}
		else if (a%4==0 || a%5==0){
			System.out.println(true);
		}
		else {
			System.out.println(false);
		}
	}
}
