#!/bin/bash

#System me sabhi running processes ki list kaunsi command se dekhoge?
ps -ef

#Sirf current terminal ke processes kaunsi command se dikhte hain?
ps 

#System me sshd process run ho raha hai ya nahi kaise check karoge?
pgrep sshd

#Process nginx ka PID kaise find karoge using pgrep?
pgrep nginx

#PID 4567 wale process ko terminate kaise karoge?
kill -15 1277

#Ek command likho jo nginx process ka PID find kare aur immediately usko kill kar de.
pid=$(pgrep nginx)

if [[ ! -z $pid ]];then 
  kill -9 "$pid"
else
  echo "no nginx process found"
fi

#Command likho jo nginx ke sabhi processes aur unka PID show kare.
pgrep -l nginx

#Agar ek process gracefully terminate karna ho to kaunsa signal use karoge?
kill -15 1244

#Ek command likho jo top 5 memory consuming processes show kare using ps
ps -eo pid,%mem,cmd  --sort=-%mem |head -n 5

#Tumhari system me ek service stuck ho gayi hai aur uska process apache2 naam se run ho raha hai.

#Steps likho:

#Process ka PID find karo

#Usko forcefully terminate karo

pid=$(pgrep apache2)
if [ ! -z $pid ];then
  kill -9 "$pid"
else
  echo "no apache2 process found"
fi
 






