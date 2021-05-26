rem make all these things environment variables!
cd
rem set JENKINS_HOME=d:\jenkins\jenkins-home
rem pass home directly to jvm.
"C:\Program Files\Java\jre1.8.0_291\bin\java.exe" -DJENKINS_HOME=d:\jenkins\jenkins-home -jar ..\jars\jenkins.war --enable-future-java --httpPort=8081
