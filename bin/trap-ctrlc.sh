#!/bin/bash 

ctrlc=0

function trap_ctrlc () {
    let ctrlc++
    echo
    if [[ $ctrlc == 1 ]]; then
        echo "The first loop begin:"
    elif [[ $ctrlc == 2 ]]; then
        echo "Enter the second loop:"
    elif [[ $ctrlc == 3 ]]; then
        echo "Enter the final loop:"    
    else
        echo " Quit the loop"
        exit 
    fi 
}

trap trap_ctrlc SIGINT 

#set -x to check script

while true
do 
    echo "Sleeping..."
    sleep 5
done