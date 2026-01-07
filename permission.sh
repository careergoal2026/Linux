#!/bin/bash
echo "You are part of a team working on a project stored in /opt/project/.

A user named alex created a script called deploy.sh.

Other members of the team cannot run the script.

ls -l /opt/project/deploy.sh output:

-rw-r----- 1 alex devteam 1200 Dec 5 10:00 deploy.sh
Tasks
Identify why other team members cannot execute the script.

Modify permissions so the group (devteam) can execute the script, but others should still have no access.

Ensure the owner remains alex.

After fixing permissions, run the script and save both stdout and stderr into a file named /home/user/deploy.log using redirection.

Optional (Advanced — ACL)

Give only one user sam execute permission without modifying group permissions.

"
ls -l deploy.sh
chmod 650 deploy.sh
ls -l deploy.sh
./deploy.sh > deploy.log 2>&1
cat deploy.log
