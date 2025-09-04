#!/bin/bash

# Update packages
yum update -y

# Install Nginx
amazon-linux-extras install nginx1 -y

# Enable Nginx to start on boot
systemctl enable nginx

# Start Nginx immediately
systemctl start nginx
