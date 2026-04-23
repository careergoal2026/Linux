#!/bin/bash

p_name=$1
threshold=0.1

PIDS=$(ps -C "$p_name" -o pid=)
mkdir -p snapshot
 touch snapshot/ps.txt

for pid in $PIDS
do
  mem_pct=$(ps -p "$pid" -o %mem= | tr -d ' ')
  echo "$mem_pct"
  if (( $(echo "$mem_pct > $threshold" | bc -l) ))
  then
    ts=$(date +%Y-%m-%d_%H%M%S)
    echo "Threshold exceeds for pid : $pid"
    echo "timestamp :$ts">>snapshot/ps.txt
    echo "-------------------------------PS snapshot---------------------------">>snapshot/ps.txt
    ps -p "$pid" -o %mem,cmd,pid | tr -d ' '>> snapshot/ps.txt
    echo "-------------------------------TOP snapshot---------------------------">>snapshot/ps.txt
    top -b -n 1 -p "$pid">>snapshot/ps.txt
    echo "-------------------------------PROC snapshot---------------------------">>snapshot/ps.txt
     cat /proc/$pid/status >> snapshot/ps.txt
  fi
done
