#!/bin/bash
FILE=$1
ARG=$2
DIR=".out"

#TODO Fixa så $1 kan vara flagga för java

if [ ! -d $DIR  ]; then
    echo "Can't find '.out'"
else
    if [ ! -f "$DIR/$FILE.class"  ]; then
        echo "Can't find $FILE, please run 'jComp'"
    else
        java -cp .out $FILE $ARG
    fi
fi
