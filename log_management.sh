#!/bin/bash

LOG_DIR="/var/log/nginx"
ARCHIVE_DIR="/var/log/nginx/archive"
RETENTION_DAY=0


#validate if log dir and archieve dir exists
for dir in "$LOG_DIR" "$ARCHIVE_DIR";do
  if [[ ! -d "$dir" ]];then
    mkdir -p "$dir"
    chmod 755 "$dir"
    echo "created dir $dir"
  else
    echo "$dir exists..skipping creation"
  fi 
done

#compress log file
find $LOG_DIR -type f -name "*.log" -mtime 0 | while read file ;do
  if [[ -f "$file" ]];then
    gzip "$file"
    echo "compressed $file" 
  fi
done 

#archive compress file
find $LOG_DIR -type f -name "*.gz" -exec mv {} "$ARCHIVE_DIR/" \;
echo "moved compressed log file"


#remove old log file

count=$(find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime "$RETENTION_DAY" | wc -l)
 find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime "$RETENTION_DAY" -delete
  echo "Removesd $count file from $ARCHIVE_DIR"
 
