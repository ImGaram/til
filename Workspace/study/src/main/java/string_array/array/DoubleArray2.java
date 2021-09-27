package string_array.array;

public class DoubleArray2 {
	public static void main(String[] args) {
		int[][] A;
		A =new int[3][];
		A[0] = new int[] {10,20,30};
		A[1] = new int[] {1,2};
		A[2] = new int[1];
		
		for (int i = 0; i < A.length; i++) {
			for (int j = 0; j < A[i].length; j++) {
				System.out.print(A[i][j]+" ");
			}
			System.out.println();
		}
	}
}
