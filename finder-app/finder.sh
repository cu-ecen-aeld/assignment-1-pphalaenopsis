#!/bin/bash

if [[ $# -ne 2 ]]
then
    echo "App needs exactly 2 arguments"
    exit 1
fi

if [[ -d "$1" ]]
then
    echo ""
else
    echo "$1 is not a directory"
    exit 1
fi

num_files=$(find $1 -maxdepth 1 -type f | wc -l)
matches=$(find $1 -maxdepth 1 -type f -exec cat {} \; | grep "$2" -c)

echo "The number of files are $num_files and the number of matching lines are $matches"
