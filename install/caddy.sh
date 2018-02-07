#!/bin/bash

# get caddy
curl https://getcaddy.com | bash

# create folders and files for caddy
sudo mkdir /etc/caddy
sudo chown -R root:www-data /etc/caddy
sudo ln $HOME/.dotfiles/settings/Caddyfile /etc/caddy/Caddyfile
sudo mkdir /etc/ssl/caddy
sudo chown -R www-data:root /etc/ssl/caddy
sudo chmod 0770 /etc/ssl/caddy
sudo mkdir /var/www
sudo chown www-data:www-data /var/www

# firewall exceptions
sudo ufw allow http
sudo ufw allow https

# autostart with systemctl
sudo ln -s $HOME/.dotfiles/settings/caddy.service /etc/systemd/system/caddy.service
sudo systemctl daemon-reload
sudo systemctl enable caddy.service
sudo systemctl status caddy.service
