package conquest;

public class Q14 {
	public static void main(String[] args) {
		Soldier[] so = new Soldier[10];
		Dragon d1 = new Dragon();
		
		for (int i = 0; i < so.length; i++)
			d1.status(so[i].attack_power());
		System.out.println("드래곤 hp : " + d1.hp);
	}
}
