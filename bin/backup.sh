#!/bin/bash
  
LOG=$1

echo "Creating backup directory" >> /home/$USER/$LOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$LOG
cp -v /home/$USER/work/* /home/cloud_user/work_backup/ >> /home/cloud_user/$LOG
echo "Finished Copying Files" >> /home/$USER/$LOG