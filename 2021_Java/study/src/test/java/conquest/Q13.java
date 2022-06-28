package conquest;

public class Q13 {
	public static void main(String[] args) {
		Dragon d1 = new Dragon();
		Soldier s1 = new Soldier();
		
		d1.status(s1.attack_power());
		System.out.println("드래곤 hp : " + d1.hp);
	}
}
