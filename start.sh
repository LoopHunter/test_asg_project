#!/bin/bash
cd /home/ec2-user/test_asg_project
pm2 -f start user_pm2.json
