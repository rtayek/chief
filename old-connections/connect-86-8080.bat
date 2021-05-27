rem this agent used launch agent by connecting it to the master
rem and nothing else is checked in that area
reme get this from the page for the agent
java -jar ../jars/agent.jar -jnlpUrl http://192.168.1.6:8080/computer/agent-86/jenkins-agent.jnlp -secret 1c6d8ff58e577945d6e67b3fb8716c2190cf45680b81ad996705bb754f503529 -workDir "c:\agent-86"