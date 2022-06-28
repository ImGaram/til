package conquest;

public class MinerTest {
	public static void main(String[] args) {
		Miner m1 = new Miner("말런", 0);
		Miner m2 = new Miner("글로리아", 0);
		m1.mine(3);
		m2.mine(2);
		m1.print();
		m2.print();
	}
}

class Miner {
	String name;
	int coins;
	
	Miner(String name, int coins) {
		this.name = name;
		this.coins = coins;
	}
	
	public void mine(int n) {
		coins+=n;
	}
	
	public void print() {
		System.out.println("name : "+name + ", coins : "+coins);
	}
}
