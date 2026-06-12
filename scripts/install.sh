#!/bin/bash

# Set exact paths for node and npm installed via nvm
export NVM_DIR="/home/ec2-user/.nvm"
source $NVM_DIR/nvm.sh
export PATH="/home/ec2-user/.nvm/versions/node/v23.11.1/bin:$PATH"

echo "Node version: $(node --version)"
echo "npm version: $(npm --version)"

# Fix permissions so ec2-user can write
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

echo "Installing dependencies..."
cd /home/ec2-user/acebook
npm install
echo "Dependencies installed."