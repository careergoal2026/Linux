#!/bin/bash

# Check if particular process exists or not purely based on the name of the 
# the name of the process should be passed as a param to the script 
# if not running start the process

process=$1
if pgrep -x "$process" > /dev/null 
then 
 echo "process $process running"
else
  echo "process $process not running..."
  echo "starting the process..."
  systemctl start "$process"
fi


