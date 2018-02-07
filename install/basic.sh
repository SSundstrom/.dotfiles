#!/bin/bash

sudo -v

#%%%%%%%%%%%%%%%%%
#  general apt   %
#%%%%%%%%%%%%%%%%%
sudo apt-get install htop git

#%%%%%%%%%%%%%%%%%
#     vim        %
#%%%%%%%%%%%%%%%%%
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#%%%%%%%%%%%%%%%%%
#   oh-my-zsh    %
#%%%%%%%%%%%%%%%%%
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

bash $HOME/.dotfiles/install/reroute_zsh.sh
bash $HOME/.dotfiles/install/caddy.sh
bash $HOME/.dotfiles/install/musicquiz.sh

#%%%%%%%%%%%%%%%%%
#   oh-my-zsh    %
#%%%%%%%%%%%%%%%%%

