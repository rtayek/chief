#!/bin/sh
# connect remote agent to controller
address=192.168.1.6
port=8080
agent=86
useSecret=false
echo before $#  $agent $port $address
while getopts s name
do
    case "${name}" in
        s) useSecret=true; echo use secret ;;
        ?) echo ? $OPTIND ;;
        *) echo '*'  $OPTIND;;
    esac
done
echo after $# $agent $port $address
echo optind: $OPTIND, '$#': $# optarg $OPTARG
shift "$((OPTIND-1))" # get rid of options
if [ $# -gt 1 ]; then agent=$1; fi
echo agent $agent
if [ $# -gt 2 ]; then port=$2; fi
echo port $port
url="http://$address:$port/computer/agent-$agent/jenkins-agent.jnlp"
echo "url $url"
workDir="c:\agent-$agent"
echo "workDir $workDir"
#echo use secret $useSecret
if $useSecret; then echo yes; else echo no; fi
secret=a03f090362274d4eac1fd1e7c8297af9
set -x
if $useSecret
	then 
		echo java -jar ../jars/agent.jar -jnlpUrl $url -secret $secret -workDir "$workDir"
	else
		echo java -jar ../jars/agent.jar -jnlpUrl $url -workDir "$workDir"
fi
	