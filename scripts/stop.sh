#!/bin/bash

echo "Stopping application"
pkill -f "node" || true
echo "Application stopped."
