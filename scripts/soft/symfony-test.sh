#!/bin/bash

sudo mkdir /var/log/symfony-test

sudo cp vhosts/symfony-test.conf /etc/apache2/sites-available
sudo ln -s /etc/apache2/sites-available/symfony-test.conf /etc/apache2/sites-enabled
sudo service apache2 restart #todo move this to another place

sudo chmod 777 /var/www/html/symfony-test -R
cd /var/www/html/symfony-test
composer install
