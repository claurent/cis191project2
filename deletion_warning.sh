#!/bin/bash
# deletion_warning.sh
# warns user by popup notification that certain files will be deleted soon.
# $1 will be the amount of time to check for use (list_unused_files.sh $1)
# $2 will be the amount of time to wait until the files are deleted

notify-send -t 5000 "These files will be deleted in $2 minutes:" "$(./list_unused_files.sh $1 )"