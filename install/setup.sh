#!/bin/bash
gcc

sudo -v

# general apt
sudo apt-get install htop git zsh nodejs fzf z

# git       
sh $HOME/.dotfiles/install/scripts/git.sh 

# oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh $HOME/.dotfiles/install/scripts/zsh.sh

# vim
git clone --depth=1 https://github.com/amix/vimrc.git $HOME/.vim_runtime
sh $HOME/.vim_runtime/install_awesome_vimrc.sh

# Run install scripts
curl https://getcaddy.com | bash
git clone https://github.com/SSundstrom/DWIMS-CI.git $HOME/DWIMS-CI
git clone https://github.com/SSundstrom/DWIMS.git $HOME/DWIMS

# Run setup scripts
sh $HOME/.dotfiles/install/scripts/caddy.sh
sh $HOME/.dotfiles/install/scripts/musicquiz.sh
