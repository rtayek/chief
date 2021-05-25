set JENKINS_HOME=d:\jenkins\casc\jenkins-home
rem preferred: -Dcasc.jenkins.config=/jenkins/casc_configs
set CASC_JENKINS_CONFIG=d:\jenkins\casc
"C:\Program Files\Java\jre1.8.0_291\bin\java.exe" -jar ..\jars\jenkins.war --enable-future-java --httpPort=8081

