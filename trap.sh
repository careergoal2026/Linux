#!/bin/bash


echo $$

trap 'echo "script terminated but i will keep running haha"' TERM KILL
while true
do 
echo "Loop"
sleep 2
done
