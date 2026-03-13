#!/bin/bash

#Check file size in script
stat -c %s fruit.txt
#Last Modified Time
stat -c %y fruit.txt
#Only File Name
stat -c %n fruit.txt
#File Permissions
stat -c %A fruit.txt
#file owner
stat -c %U fruit.txt

