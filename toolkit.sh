#!/bin/bash
echo "Task 1
Check if a directory named starting_point exists. If it does not, create it.

Task 2
Navigate into starting_point and create a file named secret_lair.txt.

Task 3
Return to /home/user, locate the directory named delete_directory, and delete it.

Task 4
In the same location, identify the file named delete.txt and delete it."
ls
mkdir starting_point
cd starting_point
touch secret_lair.txt
cd ..
rmdir delete_directory
rm delete.txt
ls

 

