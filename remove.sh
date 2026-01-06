#!/bin/bash
echo "Navigate to the directory /home/user/task_9.

Delete the file old_config.txt using a command that avoids confirmation prompts.

Recursively and forcefully remove the directory junk/, which contains files.

Remove the empty directory empty_dir/.

Open the file system.log using a scrollable file viewer so that you can navigate through it efficiently.


"
cd task_9
rm old_config.txt
rm -rf junk
rmdir empty_dir
less system.log

