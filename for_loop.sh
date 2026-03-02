#!/bin/bash

for server in web1 web2 web3;do
  echo "server in :$server"
done

for file in $(find /var/log -name "*.log" -size -100M);do
    echo "compress file :$file"
done

