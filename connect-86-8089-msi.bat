 rem this agent used launch agent by connecting it to the master
 rem and nothing else is checked in that area
 java -jar ..\jars\agent.jar -jnlpUrl http://192.168.1.6:8089/computer/agent-86/jenkins-agent.jnlp -workDir "c:/agent-86"