#!/bin/bash

p_name=$1
threshold=80

ps -C "$p_name" -o pid,comm,%mem,rss
