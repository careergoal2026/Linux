#!/bin/bash
echo "Backup the Project: Create a complete copy of the project_data directory named project_backup in the same location.
 Since this is a directory, you must copy it recursively.

Version the Configuration: Inside the original project_data folder,
 rename the configuration file config.conf to config.conf.old to save the current state before making changes.

iClean Log Files: Inside project_data,
 delete all files ending in .log to free up space, but ensure you do not delete any other files (like .py scripts)."

cp -r project_data project_backup
tree project_data
tree project_backup

cd project_data
mv config.conf config.conf.old
rm -r *.log

