
#!/bin/bash
echo "Task 1
Verify whether the directory secret_lair exists inside starting_point. If it does, determine how many subdirectories ("rooms") are present inside it.
Record the number in /home/user/answer.txt.

Task 2
Identify which subdirectory ("room") has restricted access due to permissions and cannot be accessed without elevated privileges.
Store the name of this restricted room in /home/user/answer.txt.

Task 3
Determine the correct Linux command that would be used to change the ownership of the above identified subdirectory("room") so that it belongs to the user account.
Write the command in the following format into /home/user/answer.txt:

command_used/home/user/starting_point/secret_lair/




"
cd starting_point/
cd secret_lair/
mkdir room1
mkdir room2
mkdir room3


chmod 755 room1
chmod 755 room2
chmod 700 room3

ls -l

sudo chown user:user room2

ls -l
