REM @echo off
REM connect this agent (slave) node to controller (master) node.
rem but first create the agent on the controller note.
rem TCP port for inbound agents must be enabled
REM http://192.168.1.6:8080/jnlpJars/agent.jar
java -jar ../jars/agent.jar -jnlpUrl http://localhost:8080/computer/agent-99/jenkins-agent.jnlp -secret @my-secret.txt -workDir "d:\jenkins-agent-99"
rem need to enable tls for agent to connect
rem trying D:\jenkins-agent-99 for remote root directory.
