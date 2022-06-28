package chapter3.sc;

import java.util.Scanner;

public class Scn2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		
		System.out.print("나이 입력: ");
		int age=sc.nextInt();
		
		System.out.print("이름 입력: ");
		String str=sc.next();
		
		System.out.println("나이 : "+age+", 이름 : "+str);
	}
}
