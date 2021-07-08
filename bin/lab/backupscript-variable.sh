#!/bin/bash

#You work for Universe Incorporated. One of your users — cloud_user — has an already existing backup script. 
#There's been a request from two other users — adent and zbee — to have the same script made available. 
#Modify /home/cloud_user/backup.sh to include using bash variables for the user directories and user names. 
#Feel free to include variables for anything else you'd like.
#Once complete, copy the script to the other user directories, and ensure it runs and successfully backs up the required files.

#Task-1: Modify the Backup Script to use Variables - That Would Allow Other Users to Successfully Run the Script
#Ensure that any references to "cloud_user" are replaced by a variable that will reference the username of the user running the script.

#Task-2:Add a Parameter to Determine the Name of the Log File
#Add a variable for the log file that will be populated by a parameter passed on the command line.

#Task-3: Run the Script in Each User's Home Directory to Ensure That It Works.
#Mark the script as executable and run it, then verify that all files are backed up to the required directory.

MYLOG=$1

echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG

#copy the script to /tmp: cp backup.sh /tmp
#copy from /tmp to other users