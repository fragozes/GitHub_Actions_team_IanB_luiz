#!/bin/bash

echo "Stopping application..."
sudo pkill -f "node bin/www" || true
echo "Application stopped."