#!/bin/bash

p_name=$1
threshold=0.1

PIDS=$(ps -C "$p_name" -o pid)
mkdir -p snapshot
touch snapshot/ps.txt
touch snapshot/top.txt
touch snapshot/proc.txt

ts=$(date +%H%M%S)
for pid in $PIDS
do
  mem_pct=$(ps -p "$pid" -o %mem= | tr -d ' ')
  echo "$mem_pct"
  if [[ $mem_pct > $threshold ]]
  then
    echo "Threshold exceeds for pid : $pid"
    echo "timestamp :$ts">snapshot/ps.txt
    echo "-------------------------------PS snapshot---------------------------"
    ps -p "$pid" -o %mem= | tr -d ' '>> snapshot/ps.txt
    echo "-------------------------------TOP snapshot---------------------------"
    top -b -n 1 -p "$pid">>snapshot/top.txt
    echo "-------------------------------PROC snapshot---------------------------"
     cat proc/$pid/status >> snapshot/proc.txt
  fi
done
