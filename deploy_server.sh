#!/bin/bash

git submodule init
git submodule update
cd ngrok
make server

cd /etc/systemd/system
rm ngrok_server.service
ln /root/app/ngrok/service/ngrok_server.service
systemctl enable ngrok_server.service
systemctl start ngrok_server.service