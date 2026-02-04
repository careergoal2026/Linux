#!/bin/bash
echo "You are a Junior Cloud Engineer working on a production server. The script mentions a real-world case where an engineer accidentally deleted the entire /tmp directory because of a typo with rm -rf .

You are now in a similar high-stakes situation. The directory /home/user/deployments contains:

Old Versions: v1, v2 (Need to be deleted).
Current Production: prod_v3 (MUST NOT be deleted).
Configuration: config_safe (MUST NOT be deleted).
Your manager has asked you to clean up the old versions and backup the production version. One wrong move with rm -rf could wipe out the production site.

Task
Working directory: /home/user/deployments

Navigate to the Critical Directory:

Move into the /home/user/deployments directory. All commands must be run from here to avoid path mistakes.
Safety First - Backup:

Before deleting anything, create a backup of the prod_v3 folder.

Copy prod_v3 (and all its contents) to a new folder named prod_v3_backup inside the same directory.

Surgical Cleanup:

Delete the directories v1 and v2.

CRITICAL: Do not use rm -rf * or you will delete production!

You must delete only the old versions.

The "Hidden" Danger:

There is a directory named temp cache (with a space in the name) created by mistake.

Delete this directory."
cp -r prod_v3 prod_v3_backup
rm -ri v1
rm -ri v2
rm -ri temp\ cache/
