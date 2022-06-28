package generic.genericMethod;

public class Student01<T> {
    static <T> T getOneStudent(T id) {
        return id;
    }
}