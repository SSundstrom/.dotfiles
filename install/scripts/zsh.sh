#!/bin/bash
file=".zshrc"
rm ~/"$file"
ln -s ~/.dotfiles/settings/zshrc ~/.zshrc
