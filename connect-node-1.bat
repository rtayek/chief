REM @echo off
REM connect this agent (slave) node to controller (master) node.
rem but first create the agent on the controller note.
rem TCP port for inbound agents must be enabled
REM http://192.168.1.6:8080/jnlpJars/agent.jar
REM Run from agent command line:
set secret=432b8d912e934cda93a606afeebae0fd
rem run in parent folder
java -jar ../jars/agent.jar -jnlpUrl http://127.0.0.1:8080/computer/agent-99/jenkins-agent.jnlp -secret %secret% -workDir "d:\jenkins-agent-99"
 
REM Run from agent command line, with the secret stored in a file:
REM echo e28da1a9e4f143228f5ba32b1c307b34 > secret-file
REM java -jar agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/jenkins-agent.jnlp -secret @secret-file -workDir "c:\jenkins-node-1"
