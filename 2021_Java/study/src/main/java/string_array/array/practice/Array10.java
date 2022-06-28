package string_array.array.practice;

public class Array10 {
	public static void main(String[] args) {
		int[]x= {0};
		System.out.println("호출 전 : "+ x[0]);	// 0(1)
		
		increment(x);	// x의 주소(2)
		
		System.out.println("호출 후 : "+ x[0]);	// 1(5)
	}

	private static void increment(int[] n) {	// 배열로 받음 => 주소를 받음
		n[0]++;	// 0->1 (3)
		System.out.println("함수 안 : "+n[0]);	// 1(4)
	}
}
