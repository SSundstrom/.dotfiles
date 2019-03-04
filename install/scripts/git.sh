#!/bin/bash
file=".gitconfig"
rm ~/"$file"
ln -s ~/.dotfiles/settings/gitconfig ~/.gitconfig
