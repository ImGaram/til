package conquest;

class Account {
	private String ano;
	private String owner;
	private int balance;
	
	Account(String ano, String owner, int balance){
		this.ano = ano;
		this.owner = owner;
		this.balance = balance;
	}
	
	String getAno() {
		return ano;
	}
	
	String getOwner() {
		return owner;
	}
	
	int getBalance() {
		return balance;
	}
	
	void setAno(String ano) {
		this.ano = ano;
	}
	
	void setOwner(String owner) {
		this.owner = owner;
	}
	
	void setBalance(int balance) {
		this.balance = balance;
	}
	
	public void transfer(Account target, int amount) {
		if (amount > balance) {
			System.out.println("잔액이 없어요.");
		}
		else {
			balance -= amount;
			target.balance += amount;
		}
	}
	
}
