#!/bin/bash
set -e
sudo apt update && sudo apt install -y nginx
sudo cp -r www/* /var/www/
sudo rm -f /etc/nginx/sites-enabled/default
sudo cp nginx/shop.conf /etc/nginx/conf.d/shop.conf
sudo nginx -t && sudo systemctl reload nginx
echo "Done. Open http://127.0.0.1/"
