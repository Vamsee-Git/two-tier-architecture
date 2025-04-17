#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Welcome to Instance 1</h1>" > /var/www/html/index.html
