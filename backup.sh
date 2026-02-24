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
echo "$AVAILABLE_SPACE"
if [ "$AVAILABLE_SPACE" -lt "$REQUIRED_SPACE_IN_MB" ];then
  echo "Not enough space. Required space is : $REQUIRED_SPACE_IN_MB Available space is :$AVAILABLE_SPACE"
  exit 1
fi
echo "Enough space available"


echo "#check if database exist or not. If not, exit the script"
DATABASE_NAME="my_database"
DATABASE_FILE="Linux/${DATABASE_NAME}.db"
touch "$DATABASE_FILE"
if [ ! -f "$DATABASE_FILE" ];then
  echo "No database exists...creating one"
  exit 1
fi
echo "Database exists"

BACKUP_FILE="$BACKUP_DIR/${DATABASE_NAME}_BACKUP_$(date +%Y%m%d_%H%M%S).bak"

echo "performing backup "

echo "dummy backup content for $DATABASE_NAME" >"$BACKUP_FILE"

if [ ! -f "$BACKUP_FILE" ];then
  echo "No file created"
  exit 1
fi
echo "File created successfully"

echo "#Check if the size of the backup is small or large"
BACKUP_FILE_SIZE_MB=$(du -m "$BACKUP_FILE" | cut -f1)
if [ "$BACKUP_FILE_SIZE_MB" -lt 1 ];then
  echo "file size too small"
else 
  echo "file size too large"
fi 

echo "backup process completed successfully"
exit 0





