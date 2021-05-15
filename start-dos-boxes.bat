rem https://superuser.com/questions/100249/how-to-pin-either-a-shortcut-or-a-batch-file-to-the-new-windows-7-8-and-10-task
rem https://stackoverflow.com/questions/38318719/run-a-shortcut-with-a-batch-file/38318765
rem start /c CommandPrompt1.lnk run-batch-files.bat
start /d .. "run-jenkins.bat" CommandPrompt2.lnk
start "connect-node-1.bat" CommandPrompt3.lnk
start "try something" CommandPrompt4.lnk
