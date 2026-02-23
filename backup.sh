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

 
