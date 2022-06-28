package chapter4.test;

public class TvTest {

    public static void main(String[] args) {
        Tv t = new Tv();
        t.turnOnOff();
        t.channel = 10;
        t.volume = 99;
        t.channelDown();
        t.volumenUp();
        t.volumenUp();
        System.out.print("현재 채널은 "+t.channel);
        System.out.println(", 볼륨은 "+t.volume+"입니다");
    }
}