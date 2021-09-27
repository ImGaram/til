package baekjoon;

import java.util.Scanner;

public class Practice1 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int a=sc.nextInt();
		int b=sc.nextInt();
		b-=45;
		if(b<0) {
			b+=60;
			a--;
			if (a<0) {
				a+=24;
			}
		}
		System.out.print(a+" "+b);
	}
}
