#!/bin/bash
# simple demo of an input dialog box
# global variables / default values
INPUTBOX=${INPUTBOX=dialog}
TITLE="Default"
MESSAGE="Something to display"
XCOORD=10
YCOORD=20
# function declarations - start
# display the input box
funcDisplayInputBox () {
$INPUTBOX --title "$1" --inputbox "$2" "$3" "$4" 2>tmpfile.txt #$2: the message want to display, $3 xcoord, $4 ycoord
#using standard error to capture choice, standard out is display the input box
}
# function declarations - stop
# script - start
funcDisplayInputBox "Display File Name" "Which file in the current directory do you want to display?" "10" "20"
if [ "`cat tmpfile.txt`" != "" ]; then #if tmpfile equal to nothing = tmpfile have content to display
cat "`cat tmpfile.txt`" #then cat "cat tmpfile"
else
echo "Nothing to do"
fi
# script - stop