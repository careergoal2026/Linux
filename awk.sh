#!/bin/bash
echo "
Use awk to extract only the 1st and 3rd fields from each line of workshop.log.

Redirect the output to the file answer.txt
"
awk '{print $1,$3}' workshop.log
