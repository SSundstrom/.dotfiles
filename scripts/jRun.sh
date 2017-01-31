#!/bin/bash
FILE=$1
DIR=".out"

if [ ! -d $DIR  ]; then
    echo "Can't find '.out'"
else
    if [ ! -f "$DIR/$FILE.class"  ]; then
        echo "Can't find $FILE, please run 'jComp'"
    else
        java -cp .out $FILE
    fi
fi
