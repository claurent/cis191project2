#!/bin/bash
# list_unused_files.sh
# lists all files in ~/Downloads/ that haven't been used in $1 minutes

for file in ~/Downloads/*
do
    ./accessed_in.sh $file $1
    if [ $? == 1 ]
	then
	echo $file
    fi
done