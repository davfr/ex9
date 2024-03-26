#!/bin/bash
#Q3

# Gets paths to files as input arguments
file_1=$1
file_2=$2

# Implement the command sha256sum on each file
file_1_sha256=$(sha256sum "$file_1" | cut -d " " -f1)
file_2_sha256=$(sha256sum "$file_2" | cut -d " " -f1)

# If the files are equal print 0, else print 1
if [ "$file_1_sha256" == "$file_2_sha256" ]; then
    echo 0
else
    echo 1
fi
