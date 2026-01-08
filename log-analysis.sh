#!/bin/bash
echo "
The application logs are stored in: /home/user/app_logs/. You are to perform the below tasks.

Find CRITICAL entries:

Locate all lines containing the keyword CRITICAL in the log directory.

Redirect the result to: output/output1.txt

Count failed logins:

Count how many failed login attempts occurred by searching for lines containing login failed.

Redirect the count to: output/output2.txt

Payment-service logs in a time window

Identify all log entries between 2025-09-22 14:00 and 2025-09-22 15:00 for the payment-service.

Redirect the result to: output/output5.txt

Important Notes
Use only grep (with flags) to solve tasks.

You may combine grep with other basic utilities like sort, uniq, wc, and awk.

Always redirect your final result into the corresponding file under /home/user/output/.

"

grep -r 'CRITICAL' app_logs/>output/output1.txt
grep -r 'login failed' app_logs/ | wc -l > output/output2.txt
grep -r 'payment-service' app_logs/* | grep '2025-09-22 14:'>output/output5.txt
