#!/bin/bash

echo "
The application logs are stored in: /home/user/app_logs/. You are to perform the below tasks.

Find CRITICAL entries:

Locate all lines containing the keyword CRITICAL in the log directory.

Redirect the result to: output/output1.txt

Count failed logins:

Count how many failed login attempts occurred by searching for lines containing login failed.

Redirect the count to: output/output2.txt

Extract unique IP addresses:

Extract all unique IP addresses from failed login attempts and sort them in ascending order.

Redirect the result to: output/output3.txt

Transactions over $500

Find all transactions over $500 and output only the transaction IDs. (Note: The transaction amounts in the logs go up to $900, so any amount above $500 should be included)

Redirect the result to: output/output4.txt

Payment-service logs in a time window

Identify all log entries between 2025-09-22 14:00 and 2025-09-22 15:00 for the payment-service.

Redirect the result to: output/output5.txt

"
grep -r 'CRITICAL' app_logs/ >output/output3.txt
grep -r 'login failed' app_logs/ > output/output4.txt
awk '/login failed/ {print $NF}' app_logs/* | sort -u >output/output6.txt
grep -r 'Transaction' app_logs/ | tr -d '$'| awk '$NF>500 {print -r $6}'> output/output7.txt 


