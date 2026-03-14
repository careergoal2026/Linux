#!/bin/bash

MAX_LIMIT=2
RUNNING=0

for (( i=1;i<=6;i++ ))
do
  (sleep 2)&
  echo "running process for job $i"
  ((RUNNING ++))
  if [[ $RUNNING  -ge $MAX_LIMIT ]];then
    wait -n
    ((RUNNING --))
  fi 
done
wait
