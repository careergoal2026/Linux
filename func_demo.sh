#!/bin/bash

function add(){
  echo "num of para: $# "
  echo "parameter :$@"
  echo "sum of 2 nos:$(($1+$2))"

}

add 10 5
