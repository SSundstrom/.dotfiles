#!/bin/bash
if [[ "$1" == *"-a"* ]]; then
  FILE=$2
else
  FILE=$1
fi

~/.dotfiles/jComp.sh $1".java"

if [[ ! "$?" == "1" ]]; then
  exit
fi

if [[ "$FILE" == "" ]]; then
  FILE="Main"
fi

~/.dotfiles/jRun.sh $FILE
