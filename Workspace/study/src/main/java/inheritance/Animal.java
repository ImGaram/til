package inheritance;

//----------부모 클래스--------------//
public class Animal {
	String eye;
	String mouth;
	
	void eat() { }
	void sleep() { }
}

//----------자식 클래스--------------//
class Tiger extends Animal {
	String leg;
	void run() { };
}

class Eagle extends Animal {
	String wing;
	void fly() { }
}

class Goldfish {
	String fin;
	void swim() { }
}
