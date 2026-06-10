#!/bin/bash

REGION=$(aws configure get region)
echo "Deploying in region: $REGION"

if [ $REGION != "eu-west-2" ]
then
    echo "This is the wrong region, change before deployment"
    exit 1
fi

echo "Installing dependencies"
cd /home/ec2-user/acebook
npm install
echo "Dependencies installed."
