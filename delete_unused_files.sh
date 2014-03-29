#!/bin/bash
# delete_unused_files.sh $1
# deletes all files in Downloads folder that haven't been used in $1 minutes

rm -rf $(./list_unused_files.sh $1)