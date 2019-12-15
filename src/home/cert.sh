#!/bin/bash

certbot certonly \
  --agree-tos \
  --domains $1 \
  --email certbot@charlesstover.com \
  --renew-by-default \
  --rsa-key-size 4096 \
  --text \
  --webroot \
  --webroot-path /var/www/certbot;
