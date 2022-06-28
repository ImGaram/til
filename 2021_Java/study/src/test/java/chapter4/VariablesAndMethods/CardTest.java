package chapter4.VariablesAndMethods;

class Card1 {
	String kind;
	int number;
	
	static int width = 100;
	static int height = 250;
}

public class CardTest {
	public static void main(String[] args) {
		Card card1 = new Card();
		card1.kind="Heart";
		card1.number=7;
		Card card2=new Card();
		card2.kind="Spade";
		card2.number=4;
		
		System.out.println("card1.kind = " +card1.kind+", card1.number = " +card1.number);
		System.out.println("card1.width = " +card1.width+", card1.height = " +card1.height);
		System.out.println("card2.kind = " +card2.kind+", card2.number = " +card2.number);
		System.out.println("card2.width = " +card2.width+", card2.height = " +card2.height);
		
		Card.width=50;
		Card.height=80;
		System.out.println("크기 = "+card1.width+", 높이 = "+card1.height);
		System.out.println("크기 = "+card2.width+",s 높이 = "+card2.height);
	}
}
