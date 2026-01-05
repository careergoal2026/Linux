#!/bin/bash
echo "Create two groups: devteam and testers.
Create a directory /project/shared owned by root:devteam with permissions so only the owner and group members can access it.
Create a directory /project/testing owned by root:testers with permissions so only the owner and group members can access it.

"
sudo groupadd devteam
sudo groupadd testers
sudo mkdir -p /root/Linux/project/shared
sudo mkdir -p /root/Linux/project/testing
sudo chown root:devteam /root/Linux/project/shared
sudo chown root:testers /root/Linux/project/testing
sudo chmod 770 /root/Linux/project/shared
sudo chmod 770 /root/Linux/project/testing
cd project
ls -a

