package conquest;

import java.util.Scanner;

public class Q08 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int temp = 0;
		int x, y, z;
		
		x = sc.nextInt();
		y = sc.nextInt();
		z = sc.nextInt();
		
		System.out.println("x = "+x+", y = "+y+", z = "+z);
		
		temp = x;
		x =y;
		y = z;
		z = temp;
		
		System.out.println("변경 후");
		System.out.println("x = "+x+", y = "+y+", z = "+z);
	}
}
