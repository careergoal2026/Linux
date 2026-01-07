#!/bin/bash
echo "You are a DevOps intern tasked with performing initial diagnostics on a system.
 A log file named system.log has been placed in your /home/user/ directory.
 Your goal is to practice inspecting and filtering information from this log using standard Linux commands.
 These skills are critical for validating system behavior, identifying errors, and catching early warning signs in DevOps workflows.

Instructions
Navigate to the directory /home/user.

View the full content of the file system.log.

Display the first 3 lines of the file.

Display the last 2 lines of the file.

Execute each command directly in the terminal.

"
head -n 3 system.log
tail -n 2 system.log
