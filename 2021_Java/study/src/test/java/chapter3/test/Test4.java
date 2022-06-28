package chapter3.test;

import java.util.Scanner;

public class Test4 {
	public static void main(String[] args) {
		int hour, min, sec;
		Scanner s = new Scanner(System.in); 
		System.out.println("초를 입력>> "); 
		sec = s.nextInt(); 
		min = sec / 60; 
		hour = min / 60;
		sec = sec % 60;
		min = min % 60; 
		System.out.printf("%d시간 %d분 %d초", hour, min, sec);
		}

}

