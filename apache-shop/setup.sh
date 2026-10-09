#!/bin/bash
set -e
sudo apt update && sudo apt install -y apache2
sudo a2enmod proxy proxy_http proxy_balancer lbmethod_byrequests slotmem_shm headers
sudo mkdir -p /var/www/apache
sudo cp -r servers/* /var/www/apache/
sudo sed -i 's/^Listen 80$/#Listen 80/' /etc/apache2/ports.conf
sudo a2dissite 000-default || true
sudo cp apache/apache-shop.conf /etc/apache2/sites-available/apache-shop.conf
sudo a2ensite apache-shop
sudo apache2ctl configtest
sudo systemctl restart apache2
echo "Done. Open http://127.0.0.1:8000/"
