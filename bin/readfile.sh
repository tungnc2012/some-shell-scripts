#!/bin/bash
# simple file reading (non-binary) and displaying one line at a time
echo "Enter a filename to read: "
read FILE
COUNT=1
while read -r DOGO; do
    if [ $COUNT = 3 ]
    then 
        continue
    else
        ((COUNT=COUNT+1))
    fi    
    echo "Dog Name: $DOGO"
done < "$FILE"