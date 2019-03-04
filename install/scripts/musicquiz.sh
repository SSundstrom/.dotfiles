#!/bin/bash
sudo apt install nodejs
git clone https://github.com/SSundstrom/DWIMS.git $HOME/DWIMS
cd $HOME/DWIMS
npm install
cd frontend
npm install

sudo ln -s $HOME/.dotfiles/settings/node_env.service /etc/systemd/system/node_env.service 
sudo systemctl daemon-reload
sudo systemctl enable node_env.service
sudo systemctl status node_env.service

