#!/bin/bash
echo "A project directory project_docs (location: project_lab/project_docs) needs to be shared between two team members:

developer1 → should have read and write access to files.
intern1 → should have read-only access.
Additionally, any new files created inside project_docs must automatically inherit these access rules.

Tasks
Go to the project directory /home/user/project_lab/project_docs and check presence of initial file design.txt.
Ensure you own the directory to prevent permission issues.
Create two users: developer1 and intern1.
Set permissions on design.txt so that:
developer1 has rw
intern1 has r
Apply default ACLs as above to the directory so that any future files inside project_docs inherit these same permissions.
Verify ACL inheritance by creating a new file named temp_design.txt.
Important Notes for Learners
Password for sudo : user@123!
Always run getfacl <file> to verify your changes.
Ensure you change ownership of the directory to your current user to avoid root ownership issues.
If touch fails with permission denied, check file ownership and inherited ACLs carefully.
Outcomes
By the end of this lab, you will be able to:

Understand the purpose and advantages of Access Control Lists (ACLs) in Linux.
Assign custom permissions to individual users beyond standard owner/group/other settings.
Configure default ACLs so that new files automatically inherit the required permissions.
Verify ACLs using the getfacl.
Troubleshoot permission-related issues by checking ownership and ACL inheritance.

"
cd project_lab/project_docs
ls -l
useradd developer1
useradd intern1
apt install acl
sudo setfacl -m u:developer1:rw design.txt
sudo setfacl -m u:intern1:r design.txt
sudo getfacl design.txt
cd -
pwd
cd project_lab
setfacl -d -m u:developer1:rw project_docs/
setfacl -d -m u:intern1:r project_docs/
getfacl project_docs/
cd project_docs
touch temp_design.txt
getfacl temp_design.txt
