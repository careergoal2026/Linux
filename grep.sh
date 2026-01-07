#!/bin/bash
echo"Perform the following actions:

Search app.log for all lines containing the exact word ERROR (case-sensitive). Once done, submit Task1 and do the same for other tasks as well.
Perform a case-insensitive search for the word error in the same file.
Search for the word failed in app.log, ignoring case and showing line numbers.
Recursively search for the word Disk across all files under /home/user/task_5, including files in subdirectories.

"
grep "ERROR" app.log
grep -i "error" app.log
grep -in "failed" app.log
grep -r "Disk" app.log

