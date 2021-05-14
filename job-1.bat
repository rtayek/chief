rem needs to be a clone, but then second build fails, so wipe workspace first
rem git clone https://github.com/rtayek/chief.git
dir chief

rem https://tudip.com/blog-post/configure-jenkins-job-to-run-batch-command/
rem foo.bat does not work unless custom workspace.
rem but chief\foo.bat does work fine!
rem git init --quiet
rem git pull --quiet https://github.com/rtayek/chief.git
rem gradle --quiet
rem do something not so dangerous since we are now running in the current directory.
echo hello