#!/bin/sh
# connect remote agent to controller
address=192.168.1.6
port=8089
agent=86
useSecret=false
while getopts s name
do
    case "${name}" in
        s) useSecret=true; echo use secret ;;
        ?) echo ? $OPTIND ;;
    esac
done
#echo optind: $OPTIND, '$#': $#
if [ $# -eq 1 ]; then agent=$1; fi
#echo $agent
if [ $# -eq 2 ]; then port=$2; fi
#echo $port
#echo use secret $useSecret
if $useSecret; then echo yes; else echo no; fi
secret=a03f090362274d4eac1fd1e7c8297af9
if $useSecret
	then echo java -jar ../jars/agent.jar -jnlpUrl http://$address:$port/computer/agent-$agent/jenkins-agent.jnlp -secret $secret -workDir "c:\agent-$agent"
	else echo java -jar ../jars/agent.jar -jnlpUrl http://$address:$port/computer/agent-$agent/jenkins-agent.jnlp -workDir "c:\agent-$agent"
fi
	