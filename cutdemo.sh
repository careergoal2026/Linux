#!/bin/bash


cat workshop.log

cut -c 1-4 workshop.log
cut -d "-" -f2 workshop.log
#Sirf name print karo

cut -d ":" -f1 student.txt

#fruit aur quantity print karo
cut -d "," -f1,3 fruit.txt

#File fruit.txt me har line ka first 5 characters print karo.
cut -c 1-5 fruit.txt

#/etc/passwd file se username aur UID print karo.
cut -d ":" -f1,3 /etc/passwd

#sirf first 3 characters print karo
cut -c 1-3 /etc/passwd
