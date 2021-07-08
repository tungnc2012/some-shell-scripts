#!/bin/bash

#You work for Universe Incorporated. One of your users - cloud_user - has placed a ticket to have a script written to back up his work directory to a new directory named work_backup in the his home directory. 
#The script should also log all actions to a log file stored in the user's home directory.
#Ensure the script works correctly by running it and verifying the files are backed up.

#Task-1: Write the Script to Back Up the Requested Files
#Write a Bash backup script that will copy the files as requested and save them in the desired directory.
#Task-2: Run the Script and Verify the Files are Backed Up as Requested
#Mark the script as executable and run it, then verify that all files are backed up to the required directory.
#Remember that we should create the directory with the script so it always exists when copying files.

echo "Creating backup directory" >> /home/cloud_user/backup_logs1
mkdir /home/cloud_user/work_backup1

echo "Copy Files" >> /home/cloud_user/backup_logs
cp /home/cloud_user/work/* /home/cloud_user/work_backup1 >> /home/cloud_user/backup_logs1
echo "Finished Copy Files" >> /home/cloud_user/backup_logs1
