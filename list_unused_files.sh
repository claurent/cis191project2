#!/bin/bash
# list_unused_files.sh
# lists all files in ~/Downloads/ that haven't been used in $1 minutes
echo "Number of files in downloads directory is:"
echo $(ls -1 ~/Downloads | wc -l)

bash ./accessed_in.sh ~/Downloads/test $1
echo $?
