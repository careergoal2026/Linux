#!/bin/bash
echo "
Compare Configuration Files

Run a command that compares server-good.conf and server-bad.conf to detect all line-level differences.

This helps you quickly identify any configuration drift without manually scanning the files.

Generate a Unified Diff

Run a command that produces a unified diff between the two configuration files, showing context lines around the changes.

This format helps you understand where the drift occurred and what was modified.

Perform a Side-by-Side Comparison

Run a command that displays both configuration files next to each other, enabling a clear visual comparison of what changed.
Extract Unique Lines

Run commands to sort both files into the filenames good_sorted.txt and bad_sorted.txt
 and then extract only the lines that exist in server-bad.conf but not in the baseline.

These unique lines reveal the exact modifications that introduced drift.

"
cd config_drift_lab
diff server-good.conf server-bad.conf
diff -u server-good.conf server-bad.conf
diff -y server-good.conf server-bad.conf
sort server-good.conf >good_sorted.txt
sort server-bad.conf >bad_sorted.txt
comm -13 good_sorted.txt bad_sorted.txt


