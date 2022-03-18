#!/bin/bash

if [ -e /bin/wp-cli ]; then
    exit
fi

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /bin/wp-cli

# YOUR_DOMAIN_NAME='adricristi.duckdns.org'
YOUR_DOMAIN_NAME='localhost'
YOUR_BLOG_TITLE='✨✨RockStart✨✨'
ADMIN_USERNAME='AdriCristi'
ADMIN_PASSWORD='password'
ADMIN_EMAIL='cristinafernandezbornay@outlook.com'

wp-cli core install \
    --allow-root \
    --path='/var/www/html/' \
    --url=$YOUR_DOMAIN_NAME \
    --title=$YOUR_BLOG_TITLE \
    --admin_user=$ADMIN_USERNAME \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email=$ADMIN_EMAIL
