#!/bin/bash

LOG_DIR="/var/log/nginx"
ARCHIVE_DIR="/var/log/nginx/archive"


#validate if log dir and archieve dir exists
for dir in "$LOG_DIR" "ARCHIVE_DIR";do
  if [[ ! -d "$dir" ]];then
    mkdir -p "$dir"
    chmod 755 "$dir"
    echo "created dir $dir"
  else
    echo "$dir exists..skipping creation"
  fi 
done

