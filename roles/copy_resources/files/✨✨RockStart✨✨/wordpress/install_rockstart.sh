#!/bin/bash

if [ -e /bin/wp-cli ]; then
    echo "Wordpress client found, skiping installation"
    exit
fi

while [ ! -f /var/www/html/wp-config.php ]; do
    sleep 1
done

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /bin/wp-cli

wp-cli core install \
    --allow-root \
    --path='/var/www/html/' \
    --url=$DOMAIN_NAME \
    --title=$BLOG_TITLE \
    --admin_user=$ADMIN_USERNAME \
    --admin_password=$ADMIN_PASSWORD \
    --admin_email=$ADMIN_EMAIL
