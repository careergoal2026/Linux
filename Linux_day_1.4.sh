#!/bin/bash
echo "Working directory: /home/user/search_lab

Find and Organize Large Files:

Identify all files inside /home/user/search_lab that are larger than 5MB (-size +5M).

Copy these files to the existing directory /home/user/search_lab/heavy_files.

Hint: Use -exec cp {} <target> \; or copy them manually.

Clean Up Old Backups:

Identify files in /home/user/search_lab that were modified more than 7 days ago (-mtime +7).

Delete these files.

Hint: Use the -delete flag.

The "Deep Search" (Replacing Locate):

Find the file named missing_config.conf which is hidden somewhere inside /home/user/search_lab.
Once found, copy it to /home/user/search_lab/found_items so the team can access it."

find . -type f -size +4k -exec cp {} plus_4k_files.txt \;
find . -type f -mtime +7 -delete
find / -type f -name "missing_config.conf" 
