#!/bin/bash
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/settings/zshrc $HOME/.zshrc
rm $HOME/.zshenv
ln -s $HOME/.dotfiles/settings/zshenv $HOME/.zshenv
