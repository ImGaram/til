package constructor.gettersetter;

public class TimeTest1 {
	public static void main(String[] args) {
		Time1 t1=new Time1();
		t1.setHour(23);
		System.out.println(t1.getHour());
	}
}

class Time1{
	private int hour;
	int minute;
	float second;
	
	void setHour(int hour) {
		if (hour<0 || hour>23) {
			return;
		}
		this.hour=hour;
	}
	int getHour() {
		return hour;
	}
}
