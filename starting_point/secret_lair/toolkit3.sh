echo "Task 1
Navigate to the starting_point/secret_lair directory and attempt to access room1. If access is denied, modify the directory’s permissions to provide full access.
Record the command used to change permissions in /home/user/answer.txt

Task 2
After modifying permissions, explore room1 to identify the file located inside it.
Record the file name in /home/user/answer.txt.

Task 3
Attempt to access room2. If permissions prevent access, apply the same permission changes you used for room1. Once accessible, read the file named treasure_story.txt. Determine the appropriate command that outputs both the number of lines and the number of words in the file.
Record this command in /home/user/answer.txt.



"
cd starting_point/secret_lair/
mkdir room1
mkdir room2
ls
pwd
sudo chmod 777 room1
cd room1
touch super_secret_clue.txt
cd ..
cd room2
touch treasure_story.txt
echo "Number
of 
lines 
are 
5" >treasure_story.txt
wc -l -w treasure_story.txt
