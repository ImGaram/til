package chapter4.test;

class Tv {
    boolean power;
    int volume;
    int channel;
    final int MAX_VOLUME = 100;
    final int MIN_VOLUME = 0;

    void turnOnOff() {
        power = !power;
    }

    void channelUp() {
        channel++;
    }

    void channelDown() {
        channel--;
    }

    void volumenUp() {
        if(volume<MAX_VOLUME)
            volume++;
        else
            System.out.println("더 이상 볼륨을 높일 수 없습니다.");
    }

    void volumenDown() {
        if(volume>MIN_VOLUME)
            volume--;
        else
            System.out.println("더 이상 볼륨을 낮출 수 없습니다.");
    }
}
