package chapter4;

import java.util.Scanner;

public class Practice {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("점수를 입력하세요: ");
		int score=sc.nextInt();
		
		if (score>=90) {
			System.out.println("당신의 학점은: ");
			System.out.println('A');
		}
		if (score<90 && score>=80) {
			System.out.println("당신의 학점은: ");
			System.out.println('B');
		}
		if (score<80 && score>=70) {
			System.out.println("당신의 학점은: ");
			System.out.println('C');
		}
		if (score<70 && score>=60) {
			System.out.println("당신의 학점은: ");
			System.out.println('D');
		}
		if (score<60) {
			System.out.println("당신의 학점은: ");
			System.out.println('F');
		}
	}
}
