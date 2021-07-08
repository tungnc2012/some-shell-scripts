#!/bin/bash
# demo of functions within a shell script structure
# script or global variables
CMDLINE=$1
echo "This is above the fuction"
# function definitions - start
# displays a message
funcListingDir () {
echo "This is all shell script files"
ls -lah
}
echo "This is between the fuction"
# display another message
funcUpdate () {
echo "This is update command"
echo $password | sudo -S apt update -y
}
#begining of shell script
echo "This is the starting point"
# function definitions - stop
# beginning of the script
funcListingDir
funcUpdate

