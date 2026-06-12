#!/bin/bash

REGION=$(aws configure get region)
echo "Deploying in region: $REGION"

if [ $REGION != "eu-west-2" ]
then
    echo "This is the wrong region, change before deployment"
    exit 1
fi

# Fix permissions so ec2-user can write
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook

echo "Installing dependencies..."
cd /home/ec2-user/acebook
npm install
echo "Dependencies installed."