rem this agent used launch agent by connecting it to the master
rem and nothing else is checked in that area
java -jar ../jars/agent.jar -jnlpUrl http://192.168.1.6:8080/computer/agent-86/jenkins-agent.jnlp -workDir "c:/agent-86"
rem java -jar ../jars/agent.jar -jnlpUrl http://192.168.1.6:8080/computer/agent-86/jenkins-agent.jnlp -secret ad0ca057e712496cba74eec8763ddeb3 -workDir "c:/agent-86"