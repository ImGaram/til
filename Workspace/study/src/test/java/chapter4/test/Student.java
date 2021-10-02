package chapter4.test;

public class Student {
    int math,eng,kor;
    String name;
    void getScore(){
        System.out.println("이름: "+this.name);
        System.out.println("국어: "+this.kor);
        System.out.println("수학: "+this.math);
        System.out.println("영어: "+this.eng);
        System.out.println("평균: "+this.getAverage());
        var a=((int)this.getAverage())/10;
        switch (a){
            case 10,9:
                System.out.println("A");
                break;
            case 8,7,6:
                System.out.println("B");
                break;
            default:
                System.out.println("C");
                System.out.println("나머지 공부 필요");
        }
    }
    int getTotal(){
        return math+eng+kor;
    }
    float getAverage(){
        return getTotal()/3;
    }
    void print(){
        System.out.println("이름: "+this.name);
    }
}