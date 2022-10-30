#!/bin/bash
cd /etc/nginx/conf.d/
sudo git clone https://github.com/LoopHunter/nginx.git
sudo systemctl restart nginx
npm install pm2 -g
