package study.inherience;

class Human extends Person{
	String name;
	int age;
	int money;
	
	public Human(String name, int age, int money) {
		this.name = name;
		this.age=age;
		this.money=money;
	}
	
	void findMoney() {
		System.out.println(money+"원");
	}
	
	@Override
	public void Money() {
		System.out.println("ajsl");
	}
}
