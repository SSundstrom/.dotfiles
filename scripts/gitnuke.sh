#!/bin/bash
BRANCH=$1

git push -d origin $BRANCH
git branch -d $BRANCH
