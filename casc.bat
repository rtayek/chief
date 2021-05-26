set JENKINS_HOME=d:\jenkins\casc\jenkins-home
rem preferred: -Dcasc.jenkins.config=/jenkins/casc_configs
set CASC_JENKINS_CONFIG=d:\jenkins\casc
rem this may all be bogus since jenkins is running in docker
"C:\Program Files\Java\jre1.8.0_291\bin\java.exe" -DJENKINS_HOME=d:\jenkins\casc\jenkins-home -jar ..\jars\jenkins.war --enable-future-java --httpPort=8083

