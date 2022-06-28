package chapter4;

import java.util.Scanner;

public class Practice2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		String english=sc.next();
		
		switch (english){
		case "odd": 
			System.out.println("홀수입니다");
			break;
		
		case "even": 
			System.out.println("짝수입니다");
			break;
		
		default:
			System.out.println("짝수도 홀수도 아님");
		
		}
	}
}
