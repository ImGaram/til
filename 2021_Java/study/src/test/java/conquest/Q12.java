package conquest;

class Dragon {
	static int attack = 20;
	static int hp = 100;
	
	public static int attack_power() {
		return attack;
	}
	
	public static void status(int n) {
		hp-=n;
		if (hp<=0)
			System.out.println("죽었습니다");
	}
}

class Soldier {
	static int attack = 10;
	static int hp = 60;
	
	public static int attack_power() {
		return attack;
	}
	
	public static void status(int n) {
		hp-=n;
		if (hp<=0)
			System.out.println("죽었습니다");
	}
}
