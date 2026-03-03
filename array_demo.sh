#!/bin/bash

servers=("web 1" "web 2" "web 3")

for server in "${servers[@]}"
do
  echo "connecting to $server"
done 


echo "${servers[0]}"

num=("1" "2" "3" "4" "5")

for no in "${num[@]}" 
do 
  sum=$((sum+no))
done

echo "$sum"
