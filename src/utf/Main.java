package utf;
import java.io.BufferedReader;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
public class Main {
    private static void read(Path path) throws IOException { // https://www.tutorialspoint.com/reading-utf8-data-from-a-file-using-java
        BufferedReader reader=Files.newBufferedReader(path,StandardCharsets.UTF_8);
        StringBuffer buffer=new StringBuffer();
        int ch=0;
        while((ch=reader.read())!=-1) { buffer.append((char)ch+reader.readLine()); }
        //System.out.println("Contents of the file: "+buffer.toString());
        String s=buffer.toString();
        if(!s.startsWith("<?xml")) {
            int n=Math.min(30,s.length());
            System.out.println(path+" "+buffer.toString().substring(0,n));
        }
    }
    public static void main(String[] args) throws Exception {
        System.out.println("Working Directory = "+System.getProperty("user.dir"));
        String filePath="../jenkins-home/users/users.xml";
        FilenameFilter f=new FilenameFilter() {
            @Override public boolean accept(File dir,String name) {
                if(name.endsWith(".xml")) return true;
                return false;
            }
        };
        Path path=Path.of("../jenkins-home");
        Files.walkFileTree(path,new SimpleFileVisitor<Path>() {
            @Override public FileVisitResult visitFile(Path path,BasicFileAttributes attrs) throws IOException {
                if(path.toString().endsWith(".xml")) try {
                    read(path);
                } catch(Exception e) {
                    System.out.println("threw: "+e);
                }
                return FileVisitResult.CONTINUE;
            }
        });
    }
}
