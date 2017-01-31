#!/bin/bash
#This script will compile all java files directory and put *.class into ./out
DIRECTORY=".out"
FILEXT=$1

if [ ! -d $DIRECTORY ]; then
    mkdir .out
fi

if [[ $1 == *"-a"* ]]; then
    javac -d .out *.java
    STATUS=1
else
  if [ ! -f $FILEXT  ]; then
    echo "No "$FILEXT" file to compile"
    STATUS=0
  else
    javac -d .out $FILEXT
    STATUS=1
  fi
fi

exit $STATUS
