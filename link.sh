#!/bin/bash
echo "Navigate to the directory /home/user/task_7.

Inside this directory, create a file named config.txt and add the line: version=1.0

Create a hard link named config_backup.txt that points to config.txt. Once done, submit Task 1.

Create a symbolic link named latest_config that points to config.txt. Once done, submit Task 2.

Verify:

Both config.txt and config_backup.txt share the same inode number.

The symbolic link latest_config resolves correctly to config.txt.

Modify the content of config_backup.txt by appending: environment=dev. Once done, submit Task 3.

Then check that config.txt also reflects this change.

Delete the original config.txt and verify:

The hard link config_backup.txt still preserves the content.

The symbolic link latest_config becomes broken

"
cd task_7
echo "version=1.0" >>config.txt
ln config.txt config_backup.txt
ln -s config.txt latest_config
ls -i 
ls -l latest_config
echo "environment=dev" >>config_backup.txt
cat config.txt
rm -rf config.txt
ls -l

