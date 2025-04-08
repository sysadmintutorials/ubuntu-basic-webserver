#!/bin/bash

# Updates
apt update && apt upgrade -y

# Nginx Install
apt install -y nginx
systemctl start nginx
systemctl enable nginx

# Create Index.html
echo "<h2>Welcome to $(hostname) : $(hostname -I | awk '{print $1}')</h2><p> I am a basic web server created by Sysadmintutorials, enjoy." | tee /var/www/html/index.html

