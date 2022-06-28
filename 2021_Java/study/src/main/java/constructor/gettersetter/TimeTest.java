package constructor.gettersetter;

public class TimeTest {
	public static void main(String[] args) {
		Time t1=new Time();
		t1.setHour(23);
		System.out.println(t1.getHour());
	}
}

class Time{
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
