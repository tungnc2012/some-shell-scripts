#!/bin/bash
#You work for Universe Incorporated. One of your users — cloud_user — has an already existing backup script. 
#Using Bash command substitution, modify the script to include timestamps in the log file both before any work is done and after all work is complete.

#Task-1: Modify the Backup Script as Requested. Using the date command and command substitution, add timestamps to the log file.
#Task-2: Run the Script and Verify the Files Are Backed up with the Requested Information.
#Mark the script as executable and run it, then verify that all files are backed up to the required directory.

MYLOG=$1
DATE=`date`

echo "Timestamp before work is done: `date` " >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup
sleep 3

echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done: `date`" >> /home/$USER/$MYLOG

echo $DATE >> /home/user/$MYLOG