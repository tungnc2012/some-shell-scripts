#!/bin/bash
# this is a simple function exampleecho "Starting the function definition..."
echo "Begin the function definition"
funcExample () {
echo "We are now INSIDE the function..."
ls -lah
echo $password |sudo -S apt update -y
sudo apt install docker -y
}
funcExample