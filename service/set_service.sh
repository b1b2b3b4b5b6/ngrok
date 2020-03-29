#!/bin/sh

cd /etc/systemd/system
ln /usr/share/ngrok/service/ngrok.service
systemctl enable ngrok.service
systemctl start ngrok.service
