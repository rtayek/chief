REM @echo off
REM connect this agent (slave) node to controller (master) node.
REM http://192.168.1.6:8080/jnlpJars/agent.jar
REM Run from agent command line:
java -jar lib/agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/jenkins-agent.jnlp -secret 8619e2f6213143b9901a76b2709aa536 -workDir "c:\jenkins-node-1"
REM Run from agent command line, with the secret stored in a file:
REM echo a09b5a8a882b3983002924e65c35adac1e961c9d17053bdd7c6507d4d41b0d46 > secret-file
REM java -jar agent.jar -jnlpUrl http://localhost:8080/computer/agent-1/jenkins-agent.jnlp -secret @secret-file -workDir "c:\jenkins-node-1"