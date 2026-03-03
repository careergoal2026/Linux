#!/bin/bash

servers="web1 web2 web3"
IFS=","

for server in $servers;do
  echo "server in :$server"
done



for file in $(find /var/log -name "*.log" -size -100M);do
    echo "compress file :$file"
done

