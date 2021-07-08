#!/bin/bash
# demo of reading and writing to a file using a file descriptor
echo "Enter a file name to read: "
read FILE #read a input using variable "FILE"
exec 5<>$FILE #read and write to the file (using any number greater than or equal to 3)
while read -r DOGO; do
echo "Dog Name: $DOGO"
done <&5 #<&5 redirect the file descritor contains the file name to the while loop
echo "File Was Read On: `date`" >&5 
exec 5>&- 
