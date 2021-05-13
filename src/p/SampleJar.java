package p;

public class SampleJar {
    public static void main(String[] args) throws Exception {
        System.out.println("start sysin");
        System.err.println("start syserr");
        for(int i=0;i<10;i++) {
            Thread.sleep(5000);
            System.out.println("iteration: "+i);
            System.err.println("iteration: "+i);
        }
        System.out.println("end sysin");
        System.err.println("end syserr");
    }
}
