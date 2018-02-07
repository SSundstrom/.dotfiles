#!/bin/bash
file=".zshrc"
rm $HOME/"$file"
echo "source $HOME/.dotfiles/zsh/.zshrc" >> $HOME/"$file"
