#!/bin/bash
echo "A confidential file exists at /secure/finance-report.txt.
Only root should have write access.

Current permissions:
Tasks
Remove write permission from the finance group.

Give read-only ACL access to user megha.

Verify ACL permissions using the correct command.

Create an audit log entry by running:
echo "Access granted to megha on $(date)" | tee -a /secure/audit.log

Optional (Advanced — Default ACL)

Apply a default ACL so that any new file created in /secure/ automatically grants read access to megha
"

ls -l secure/finance-report.txt
sudo chown root:finance secure/finance-report.txt
ls -l secure/finance-report.txt
sudo chmod 640 secure/finance-report.txt
ls -l secure/finance-report.txt
sudo setfacl -m u:megha:r secure/finance-report.txt
getfacl secure/finance-report.txt
sudo echo "Access granted to megha on $(date)" | sudo tee -a /secure/audit.log
sudo setfacl -d -m u:megha:r secure/
