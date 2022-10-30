#!/bin/bash
cd ~
sudo git clone https://github.com/LoopHunter/nginx.git
cd ~/nginx
sudo mv backend.conf /etc/nginx/conf.d/
sudo systemctl restart nginx
sudo chown -R ec2-user:ec2-user ~/test_asg_project
npm install pm2 -g
