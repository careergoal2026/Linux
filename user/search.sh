#!/bin/bash
find /Linux -type f -name "*.txt">/Linux/user/find_output.txt
sudo apt update
sudo apt install plocate
sudo updatedb
locate "*.sh" 

