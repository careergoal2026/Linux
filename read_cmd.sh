#!/bin/bash
IFS=","
read name1 name2

echo $name1
#echo $name2

{

read line
echo "$line"

read line 
echo "$line"

} < test_read.txt
