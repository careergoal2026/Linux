#!/bin/bash
echo "The audit.log file must be owned by nobody:nogroup
All files inside the confidential/ folder must be owned by nobody
In addition, the system will check if you used the stat command
 to inspect audit.log (this verifies if you examined the result of your ownership change properly)."

mkdir task_8
cd task_8
touch audit.log
cd ..
mkdir confidential
cd confidential
touch file1
touch file2
cd ..
sudo chown nobody:nogroup /task_8/audit.log
sudo chown -R nobody /confidential/*
stat task_8/audit.log

