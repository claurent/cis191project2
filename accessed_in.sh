#!/bin/bash
#accessed_in.sh: Check if a file (script argument $1) has been accessed in the past $2 minutes

# exit successfully if file has been used in last $2 minutes
# exit 0 for successful
# exit 1 for failure

if [ $# != 2 ]
   then
    echo "Incorrect number of arguments"
else
    current_time=$(date +"%s")
    echo $((current_time))
fi