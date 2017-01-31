#!/bin/bash
file=".zshrc"
rm ~/"$file"
echo "source ~/.dotfiles/zsh/.zshrc" >> ~/"$file"
