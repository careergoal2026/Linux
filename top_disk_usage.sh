#!/bin/bash

# If disk usage is high print top 5 space consumer
# Print an alert when disk usage is runnning low

THRESHOLD=25
PARTITION=/

usage=$(df -h "$PARTITION" | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Usage:$usage"
echo "threeshold :$THRESHOLD"


if [[ $usage -gt $THRESHOLD ]];then
  echo "Alert! High disk Usage"
  top_5_usage=$(sudo du -h "$PARTITION" | sort -rh | head -5)
  echo "top 5 :$top_5_usage"
fi

