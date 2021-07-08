#!/bin/bash

#using shopt to expand alias in subshell ------ man shopt for more infor
shopt -s expand_aliases
#set alias for commnand
alias TODAY="date"
alias UFILES="find /home -user user"
#command substitution
TODAYSDATE=`date`
USERFILES=`sudo find /home -user user`
TODAYDATE="date" #only a simple variable

echo "Today date is: $TODAYSDATE"
echo "All files in dir owner by user: $USERFILES"
echo "This is only variable TODAYDATE: $TODAYDATE"

A=`TODAY`
B=`UFILES`

echo "With alias, TODAY is: $A"
echo "With alias, UFILES is: $B"
#alias cannot expand in subshell though two echo commands cannot print $A and $B to screen
