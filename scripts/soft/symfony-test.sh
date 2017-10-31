#!/bin/bash

sudo mkdir /var/log/symfony-test

sudo cp vhosts/symfony-test.conf /etc/apache2/sites-available
sudo ln -s /etc/apache2/sites-available/symfony-test.conf /etc/apache2/sites-enabled
sudo service apache2 restart #todo move this to another place

sudo mkdir -p /usr/local/bin
sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
sudo chmod a+x /usr/local/bin/symfony

sudo chmod 777 /var/www/html/symfony-test -R
cd /var/www/html/symfony-test
composer install
