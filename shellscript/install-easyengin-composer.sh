#!/bin/bash
wget -qO ee rt.cx/ee && printf "ubuntu\ntinsatthu4@gmail.com" | sudo bash ee
ee stack install --nginx
ee stack install --php
ee stack install --php7
ee stack install --mysql 
ee stack install --phpmyadmin 
ee stack install --redis 
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# Using Ubuntu Install npm 8
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g bower
cd /var/www && mkdir common && cd common
