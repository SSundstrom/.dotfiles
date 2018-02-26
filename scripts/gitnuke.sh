#!/bin/bash
BRANCH=$1

bold=`tput bold`
normal=`tput sgr0`

remove(){
    git push -d origin $BRANCH
    git branch -d $BRANCH
}
echo "Do you wish to delete branch ${bold}$BRANCH${normal} from remote and local?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) remove; break;;
        No ) exit;;
    esac
done

