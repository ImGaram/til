package conquest;

public class Q05 {
	public static void main(String[] args) {
		int num = 12345;
		int s, sum = 0;
		
		while(true) {
			s = num%10;	//5
			sum+=s;
			if (num<10)
				break;
			num=(num-s)/10;	// 1234
		}
		System.out.print("sum = ");
		System.out.println(sum);
	}
}
