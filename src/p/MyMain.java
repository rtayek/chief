package p;
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.function.Consumer;
import java.lang.System.*;
import java.nio.file.Path;
//import org.jenkins-ci;
//import org.jenkinsci.plugins.gitclient;
//import hudson.EnvVars;
//import hudson.util.StreamTaskListener;
//import hudson.*;
public class MyMain {
    private static class StreamGobbler implements Runnable {
        public StreamGobbler(InputStream inputStream,Consumer<String> consumer) {
            this.inputStream=inputStream;
            this.consumer=consumer;
        }
        @Override public void run() {
            new BufferedReader(new InputStreamReader(inputStream)).lines().forEach(consumer);
        }
        private InputStream inputStream;
        private Consumer<String> consumer;
    }
    private static void demo(boolean isWindows) throws IOException,InterruptedException {
        ProcessBuilder builder=new ProcessBuilder();
        if(isWindows) {
            builder.command("cmd.exe","/c","dir");
        } else {
            builder.command("sh","-c","ls");
        }
        builder.directory(new File(System.getProperty("user.home")));
        Process process=builder.start();
        StreamGobbler streamGobbler=new StreamGobbler(process.getInputStream(),System.out::println);
        Executors.newSingleThreadExecutor().submit(streamGobbler);
        int exitCode=process.waitFor();
        assert exitCode==0;
    };
    static Process runShellCommand(Path path,List<String> postfix) throws IOException {
        boolean isWindoze=System.getProperty("os.name").toLowerCase().startsWith("windows");
        List<String> prefix=isWindoze?windoze:unix;
        List<String> command=new ArrayList<>();
        command.addAll(prefix);
        command.addAll(postfix);
        ProcessBuilder builder=new ProcessBuilder();
        Map<String,String> env=builder.environment();
        env.put("JENKINS_HOME","jenkins-home");
        System.out.println(env.get("JENKINS_HOME"));
        builder.directory(path.toFile());
        System.out.println(command+" in "+path);
        builder.command(command);
        System.out.println("start");
        if(true) return null;
        Process process=builder.start();
        System.out.println("end");
        return process;
    }
    static void runGobbler(Process process) {
        StreamGobbler streamGobbler=new StreamGobbler(process.getInputStream(),System.out::println);
        Executors.newSingleThreadExecutor().submit(streamGobbler);
        StreamGobbler errorStreamGobbler=new StreamGobbler(process.getErrorStream(),System.err::println);
        Future<?> executorService=Executors.newSingleThreadExecutor().submit(errorStreamGobbler);
        //executorService;
    }
    public static void main(String[] args) throws Exception {
        Path path=Path.of("."),war=Path.of("lib/jenkins.war");
   
        List<String> postfix=Arrays
                .asList(new String[] {"java","-jar",war.toString(),"--enable-future-java","--httpPort=8080"});
        Process process=runShellCommand(path,postfix);
        if(process!=null) { runGobbler(process); int exitCode=process.waitFor(); assert exitCode==0; }
    }
    public static final List<String> windoze=Arrays.asList(new String[] {"cmd.exe","/c"});
    public static final List<String> unix=Arrays.asList(new String[] {"sh","-vxc"});
}
