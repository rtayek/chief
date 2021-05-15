package p;
import java.io.File;
import java.io.IOException;
public class RunBatchFile {
    public static void main(String[] args) throws IOException {
        Runtime runtime=Runtime.getRuntime();
        String[] command0=new String[] {"cmd","/c","echo hello"};
        System.out.println(new File("."));
        runtime.exec(command0,null,new File("."));
        String[] command=new String[] {"cmd","/c","start","job1.bat"};
        System.out.println(new File("."));
        runtime.exec(command,null,new File("."));
    }
}
