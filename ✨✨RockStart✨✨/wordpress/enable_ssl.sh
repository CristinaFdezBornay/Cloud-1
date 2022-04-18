a2enmod ssl
a2dissite 000-default
a2ensite $DOMAIN_NAME
/etc/init.d/apache2 reload