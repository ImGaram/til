package exception;

public class TryCatch2Demo {
    public static void main(String[] args) {
        int divided = 10;
        try{
            int divisor = Integer.parseInt(args[0]);
            System.out.println(divided/divisor);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("원소가 존재하지 않습니다.");
        } catch (NumberFormatException e) {
            System.out.println("숫자가 아닙니다.");
        } catch (ArithmeticException e) {
            System.out.println("0 으로 나눌 수 없습니다.");
        } finally {
            System.out.println("항상 실핼됩니다.");
        }
        System.out.println("종료");
    }
}
