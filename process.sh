#!/bin/bash
echo "
1.Capture a full process snapshot

Run a command that lists all processes along with their PID, Parent PID (PPID), State, and Command.

This snapshot will serve as your base for analysis


2.Identify actively running processes

From the snapshot, locate processes that appear to be actively using the CPU (not idle, not waiting).

Record only their numeric PIDs (one per line) into: /home/user/running_pids.txt

3. Identify sleeping processes

From the snapshot, locate processes that are present in the process table but waiting (for input, time to pass, or an event).

Examine carefully and select 3–4 relevant sleeping processes.

Save their PIDs into: /home/user/sleeping_pids.txt

4. Detect defunct (terminated but still listed) processes

From the snapshot, locate processes that have already exited but are still shown in the table because their parent has not yet acknowledged them.

Extract their PIDs and write them into: /home/user/zombie_pids.txt

5. Identify orphaned processes

Some processes may have lost their parent and have been re-parented by the system, but they are still running.

Examine the snapshot carefully and select 2–3 processes, ensuring at least one is a running orphaned process.

Record these PIDs into: /home/user/orphan_pids.txt "

awk '$3=="R" {print $1}' process_snapshot.txt >running_pids.txt
awk '$3=="S" {print $1}' process_snapshot.txt | head -4 >sleeping_pids.txt
awk '$3=="Z" {print $1}' process_snapshot.txt > zombie_pids.txt
awk '$2=="1" && $3=="R" {print $1}' process_snapshot.txt | head -3 >orphan_pids.txt
  

