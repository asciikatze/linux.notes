A Virtual Terminal is a full-screen terminal which doesn't run inside an X window: GUI login screen on Ctrl+Alt+F1, GUI desktop on Ctrl+Alt+F2 and command lines on Ctrl+Alt+F3-F7.

# BASH

Ctrl+Alt+t	#open bash terminal window
clear OR Ctrl+l	#clears the screen
exit OR Ctrl+d	#exit terminal
history | less AND Ctrl+r	#search command history, | = AltGr+w

sudo gedit & #opens the "gedit" graphical text editor, & means go to background so you can use the same terminal too, see the jobs command

sleep 10 #terminal sleeps for 10 seconds
ctrl+c #kills foreground process (kill -2)
ctrl+z #pause foreground process (kill -19)
jobs #list of current jobs with jobid
bg <JOBID> #puts it in backgroung process, you cant interact with it
fg <JOBID> #puts it in foreground

date #shows the current date and time

#running processes
ps #what is running in the terminal
ps -u <USER> #Processes run by user.
ps -u <USER> | grep <PROGRAM>
pgrep <PROGRAM> #Tells the programs processid PID !
kill <PID> #kills the program, its a request
kill -l #Killsignal list.
kill -9 <PID> #Kills!
pkill -9 <PROGRAM> #Kills based on name not processid.
ps aux #showas the processes in a list like top just not updating
top #q to stop
htop #better
 install: sudo apt install htop OR sudo snap install htop
 start: htop
 stop: press q

#tips and tricks
watch <PROGRAM> #Execute a program periodically, 2sec by default, Ctrl+c to stop.
killall <PROGRAM> #Kill processes by name, example: chrome fucks up. use the "which" command so you know what to "killall".
lsof #Lists open files.. its a lot
sudo -s OR sudo bash #run in a root enviroment, not as the root user, to stop type: exit

# SCRIPTING

<file>.sh #.sh is not required
#start the file with "#!/bin/bash" thist tells that its a script and what kind of sript
#!/bin/sh <-original shell, for compatibility run on any unix system
#change the file to be executeable with chmod +x OR chmod 755
#execute(same directory you in): ./<filename>
#put tracing on your script for troubleshhoting: #!/bin/bash -x

#place it in 
/home/username/bin #bash will finds it here
OR
/usr/local/bin #makes it accessable by everyone else on your system inclouding the root user
#look in the .profile file it shows wher it looking for and you can add there

echo $PATH #shows where bash looks for programfiles
#the bashrc file should have a line in it that searches for your bin folder in your home directory

tip: while writing scripts you can break the line with : \ than press Enter(AltGr + q)
tip: env #lists the enviroment varieables
