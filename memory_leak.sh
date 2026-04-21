#!/bin/bash

p_name=$1
threshold=0.1

PIDS=$(ps -C "$p_name" -o pid)

for pid in $PIDS
do
  mem_pct=$(ps -p "$pid" -o %mem= | tr -d ' ')
  echo "$mem_pct"
  if [[ $mem_pct > $threshold ]]
  then
    echo "Threshold exceeds for pid : $pid" 
  fi
done
