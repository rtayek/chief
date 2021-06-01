nothing seems to work. so starting over with war.
enabled tcp in system
just a few plugins
the incantation on the agent page to connect the agent to the controller works.
no luck with any connection from larie's machine. (check this again)
need to add docker plugins
filesharing message from windoze
then the absolute path problem:
    agent-86 does not seem to be running inside a container
    the working directory 'c:/agent-86/workspace/d1/' is invalid, it needs to be an absolute path.
    docker job was run by 86.

the certs problem
    turned off everything i could find - mo joy.
    found the none option under seecurity realm.
    selected done. hit save. oops - no jenkins

so lets just try some jenkins files and maybe some casc stuff.
nothing obvious to try except maybe the first example? 

lets try a custom workdir. maybe it will get by the absolute path problem.

turned off running jobs on the controller as recommended.
made an agent and: javaws http://192.168.1.6:8081/computer/agent-86/jenkins-agent.jnlp
this works fine on my machine.

recent ip address 108.184.31.122 

jenkins:
  authorizationStrategy: unsecured

trying this - let's put him on 8083
casc.bat uses new workspace

yaml file does not seem to do anything.
requires jnlp4 on: javaws http://192.168.1.6:8083/computer/agent-86/jenkins-agent.jnlp
86 works fine. 99 can't connect to 8083. browser can't connect to my machine.

stuck again - let's try putting the yaml in jenkins home.

this https://github.com/rtayek/dind-jenkins

new error message: docker: Error response from daemon: Ports are not available: listen tcp 0.0.0.0:50000: bind: Only one usage of each socket address (protocol/network address/port) is normally permitted.
looks like we may have gotten further.

maybe not. pointing to wrong jenkins home. 
need to make this an environment variable
or pass it to java.

yes, but casc/*.bat files may be bogus since jenkins is running in docker
move the yaml to cheif/ and copy it into cheif's jenkins home.

so lets try just using the war with home in the usual place.

chief does not have a gradle, jenkins file fails
so maybe try the sample i just made.

after a lot of hassle i only found one thing that seems to work consistantly:
fs2 works fine. clone repo, do gradlew call (and nothing else), get test results

so maybe some python now.
broke sample with: https://github.com/xvik/gradle-use-python-plugin/blob/master/README.md
make a new sample from git init
works fine. replace old with new later
fixed old by undoing python gradle stuff

python plugins for gradle look complicated

so fs1 is working again. lets check fs2. both of these are the same. all they do is invoke gradle scripts. this is what we want.

try running docker from command line.
we can spin up the same image more than once with a different name.
so python runs fine in a container.

build test deploy train audit

let's trigger another pipeline - trivial - done.
investigate aggregate the downstream test results

gradle python? maybe venv's - yes, do this soon

looks like travis ci is it's own thing. maybe look at jervis?

how about gradle ci? found http://stehno.com/gradle-site/asciidoc/html5/
not sure what this is.

the python wrapper for jenkins seems to be fairly easy to use.
so get more familiar with that and then try the same things in groovy.

let's try gradle and python. maybe samrocketman has something.
got sidetracked: check out artifactory
if jenkins can make the images, store them, and run them maybe we do not need artifactory?
not clear what this does. maybe just a bit higher level.

we can run a python script. so what about venv's?

we can configure a docker image with whatever custom stuff we need.
so maybe we do not need to get fancy with the pygradle or https://www.slideshare.net/StephenHolsapple/pythongradle-57668227

maybe all (or most) of the configuration can be placed in the docker files.
the deployment for any project just associate a docker image name with it.
you could have a jupyter notebook spin the containers up and run the jobs.
this could hide some of the details from the users.

idea: if the width of the NN is smaller than the could one replace an image by some weights from a few layers.
would the weights be much smaller than the image data?

more and more it looks like we should do as little as possible. basicalli one line dos or shell commands.


















        
