#!/bin/bash

echo "Starting application..."
cd /home/ec2-user/acebook
nohup node bin/www > /home/ec2-user/acebook/app.log 2>&1 &
echo "Application started."