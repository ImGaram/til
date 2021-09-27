package string_array.array;

// 배열의 초기화 방법
public class Array2 {
	public static void main(String[] args) {
		int[] a= new int[3];
		a[0]=90;
		a[1]=80;
		a[2]=85;
		
		int[] b=new int[]{90,80,85};
		
		int[] c = {85,90,95};
		
		int[] d;
		d=new int[] {85,90,95};
		// d= {85, 90, 95}	버그, new int[] 생략 불가
		
		for (int i = 0; i < d.length; i++) {
			System.out.println(b[i]+" ");
		}
		System.out.println();
	}
}
