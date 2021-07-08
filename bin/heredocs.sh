#!/bin/bash

ARRAY=(0 1 2 3 4 5 6 7 8 9 {A..Z})

while read element ; do
    echo $element
    echo "Test string"
done <<< $(echo ${ARRAY[*]})