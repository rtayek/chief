rem make all these things environment variables!
cd
set JENKINS_HOME=d:\jenkins\jenkins-home
rem let's try java 11
rem "C:\Program Files\Java\jdk-11.0.1\bin\java.exe" -jar ..\jars\jenkins.war --enable-future-java --httpPort=8080
rem "C:\Program Files\Java\jre1.8.0_281\bin\java.exe" -jar ..\jars\jenkins.war --enable-future-java --httpPort=8080
"C:\Program Files\Java\jre1.8.0_291\bin\java.exe" -jar ..\jars\jenkins.war --enable-future-java --httpPort=8081
