package midtermexam.cross;

class PlayingCard{
	int kind;
	int num;
	static int width = 100;
	static int height = 150;
	
	PlayingCard(int kind, int num) {
		this.kind=kind;
		this.num = num;
	}
}

public class Pra1 {
	public static void main(String[] args) {
		PlayingCard pc = new PlayingCard(1, 5);
		System.out.println(pc.kind +" "+pc.num);
		System.out.println(PlayingCard.width+" "+PlayingCard.height);
	}
}
