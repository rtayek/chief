rem run this is d:\jenkins
rem make all these things environment variables!
cd
set JENKINS_HOME=d:\jenkins\jenkins-home
rem set JENKINS_HOME="D:\jenkins\jenkins-home"

"C:\Program Files\Java\jdk-11.0.1\bin\java.exe" -jar ..\jars\jenkins.war --enable-future-java --httpPort=8080
REM 432b8d912e934cda93a606afeebae0fd

rem https://superuser.com/questions/100249/how-to-pin-either-a-shortcut-or-a-batch-file-to-the-new-windows-7-8-and-10-task
rem https://stackoverflow.com/questions/38318719/run-a-shortcut-with-a-batch-file/38318765
rem start /c CommandPrompt1.lnk run-batch-files.bat
rem start /d .. "run-jenkins.bat" CommandPrompt2.lnk
rem start "connect-node-1.bat" CommandPrompt3.lnk
rem start "try something" CommandPrompt4.lnk

