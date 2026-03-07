#!/bin/bash

echo $$


cleanup(){
echo "deleting tmp file"
rm -rf /tmp/temp_test.txt
echo "cleanup completed"
}

trap 'echo " Kill signal received ; cleaning up...";cleanup; exit 1' TERM
echo "Running Some long Process"
echo "Creating temp file"
touch /tmp/temp_test.txt

while true
do 
echo "some long running task"
sleep 2
done

cleanup

