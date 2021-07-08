#!/bin/bash
# this demo is for functional parameter passing
# global variable
USERNAME=$1 #put username after the script
# function definitions - start
funcAgeInDays () {
echo "Hello $USERNAME, You are $1 Years Old."
echo "That makes you approximately `expr $1 \* 365` days old..." # calculate age in days
}
# function definitions - stop
# scrip - start - before this line
clear
echo "Enter Your Age: "
read USERAGE #read from input
# calculate the number of days
funcAgeInDays $USERAGE