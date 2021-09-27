package string_array.array;

public class Imgaram1 {
	public static void main(String[] args) {
		int[] lotto = new int[6];
		
		for (int i = 0; i < lotto.length; i++) {
			lotto[i]=(int)(Math.random()*44)+1;
			System.out.println(lotto[i]);
		}
	}
}
