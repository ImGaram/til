package conquest;

public class Q20 {
	public static boolean isNumber(String str) {
		int cnt = 0;
		if (str == "" || str == null) {
			return false;
		}
		for (int i = 0; i < str.length(); i++) {
			int a = str.charAt(i)- '0';
			if (a>=0 && a<=9) {
				cnt++;
			}
			else {
				break;
			}
		}
		return cnt == str.length()? true:false;
	}
	
	public static void main(String[] args) {
		String str = "123";
		System.out.println(str+"은 숫자입니까? "+isNumber(str));
		str = "123o";
		System.out.println(str+"은 숫자입니까? "+isNumber(str));
	}
}
