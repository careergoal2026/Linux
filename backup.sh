#!/bin/bash

echo "#Check if backup dir exists or not, if not create it"

BACKUP_DIR="Linux/my_backup"
if [ ! -d "$BACKUP_DIR" ];then
  echo "dir not available creating"
  mkdir -p "$BACKUP_DIR"
  if [ $? -ne 0 ];then
    echo "error creating a file exiting"
    exit 1
  fi
fi

echo "#Check if enough space is there for backup dir or not, if not, exit the script"

REQUIRED_SPACE_IN_MB=10
AVAILABLE_SPACE=$(df -m "$BACKUP_DIR" | awk 'NR==2 {print $4}')
if [ "$AVAILABLE_SPACE" -lt "$REQUIRED_SPACE_IN_MB" ];then
  echo "Not enought space. Required space is : {$REQUIRED_SPACE_IN_MB} Available space is :{$AVAILABLE_SPACE}"
  exit 1
echo "Enough space available"
fi


