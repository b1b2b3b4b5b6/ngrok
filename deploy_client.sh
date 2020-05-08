#!/bin/bash

git submodule init
git submodule update
cd ngrok
make client

cd /etc/systemd/system
rm ngrok_client.service
ln /root/app/ngrok/service/ngrok_client.service
systemctl enable ngrok_client.service
systemctl start ngrok_client.service