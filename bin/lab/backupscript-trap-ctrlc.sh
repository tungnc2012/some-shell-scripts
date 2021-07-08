#You work for Universe Incorporated. One of your users — cloud_user — has an already existing backup script. 
#Using Bash flow control methods, modify the script to trap if a user hits Ctrl+C to cancel the script and remove all backed up files if that happens. 
#Additionally, add logic to determine if no parameters are passed to the script. If there were no parameters passed, print a help statement instead of attempting to run the script.
#Once complete, ensure it runs and successfully backs up the required files. Use the sleep command to verify that a Ctrl+C is trapped correctly.

#Task-1: Modify the Backup Script to Add the Requested Trap. Modify the backup script so that attempts to cancel the script while running will clean up all copied files and directories, but still log that the signal occurred.
#Task-2: Modify the Backup Script to Contain the Requested Logic for Parameters. Using an if statement, ensure that the script errors out without copying files if the log file parameter isn't passed.
#Task-3: Run the Script and Verify That Files Are Backed Up and Trapping and Parameter Logic Work as Requested. Mark the script as executable and run it, then verify that all files are backed up to the required directory.


#!/bin/bash

if [ -z "$1" ]; then
        echo "You have failed to pass a parameter. Please try again."
        exit 255;
fi

MYLOG=$1
function ctrlc { #task1 - begin
        rm -rf /home/$USER/work_backup
        rm -f /home/$USER/$MYLOG
        echo "Received Ctrl+C"
        exit 255
}

trap ctrlc SIGINT #task1 - stop
echo "Timestamp before work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> /home/$USER/$MYLOG

sleep 15