#!/bin/bash

certbot renew --post-hook "nginx -s reload"

echo $(openssl x509 -in /etc/letsencrypt/live/gnu.gr/fullchain.pem -noout -sha256 -fingerprint|cut -d= -f2) > /var/www/gnu.gr/fingerprint.html

cp -f /etc/letsencrypt/live/gnu.gr/fullchain.pem /etc/prosody/certs/ssl.crt
cp -f /etc/letsencrypt/live/gnu.gr/privkey.pem   /etc/prosody/certs/ssl.key
systemctl restart prosody.service

cp -f /etc/letsencrypt/live/libreops.cc/fullchain.pem /var/lib/murmur/ssl/fullchain.pem
cp -f /etc/letsencrypt/live/libreops.cc/privkey.pem   /var/lib/murmur/ssl/privkey.pem
systemctl restart murmur.service
