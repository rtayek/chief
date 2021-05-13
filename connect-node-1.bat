REM @echo off
REM connect this agent (slave) node to controller (master) node.
REM http://192.168.1.6:8080/jnlpJars/agent.jar
REM Run from agent command line:
rem java -jar lib/agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/jenkins-agent.jnlp -secret e28da1a9e4f143228f5ba32b1c307b34 -workDir "d:\jenkins-node-1"
java -jar lib/agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/slave-agent.jnlp -secret e28da1a9e4f143228f5ba32b1c307b34 -workDir "d:\jenkins-node-1"


 
REM Run from agent command line, with the secret stored in a file:
REM echo e28da1a9e4f143228f5ba32b1c307b34 > secret-file
REM java -jar agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/jenkins-agent.jnlp -secret @secret-file -workDir "c:\jenkins-node-1"

Failed to obtain http://localhost:8080/computer/agent-1/jenkins-agent.jnlp?encrypt=true
Failed to load http://localhost:8080/computer/agent-1/jenkins-agent.jnlp?encrypt=true: 404 Not Found