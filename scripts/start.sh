#!/bin/bash
# Set exact paths for node installed via nvm
export NVM_DIR="/home/ec2-user/.nvm"
source $NVM_DIR/nvm.sh
export PATH="/home/ec2-user/.nvm/versions/node/v23.11.1/bin:$PATH"

echo "Starting application..."
cd /home/ec2-user/acebook
nohup node bin/www > /home/ec2-user/acebook/app.log 2>&1 &
echo "Application started."