#!/bin/bash

if [[ $# -ne 2 ]]
then
    echo "we're looking for two arguments"
    exit 1
fi

## check directory and create file
if [[ -d $(dirname $1) ]]
then
    touch $1
else
    mkdir -p $(dirname $1) && touch $1
fi
echo $2 > $1
