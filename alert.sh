#!/bin/bash
 
# Print an alert when disk usage is runnning low

THRESHOLD=25
PARTITION=/

usage=$(df -h "$PARTITION" | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Usage:$usage"
echo "threeshold :$THRESHOLD"


if [[ $usage -gt $THRESHOLD ]];then
  echo "Alert! High disk Usage"
fi
