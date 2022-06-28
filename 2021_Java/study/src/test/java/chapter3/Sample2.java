package chapter3;

public class Sample2 {
	public static void main(String[] args) {
		System.out.println("숫자형");
		byte a1 = -128;
		byte a2 = 127;
		short b1 = -32768;
		short b2 = 32767;
		int c=100;
		long d=100l;
		float e=10.1f;
		double f=10.2f;
		
		System.out.printf("byte:%d\t short: %d\n",a1,b1);
		System.out.printf("int: %d\t long: %d\n",c,d);
		System.out.printf("float: %f\t double: %f\n",e,f);
		System.out.printf(a2+"\t"+b2);
	}
}
