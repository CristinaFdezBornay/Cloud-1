DNS_NAME=adricristi.duckdns.org
USER='AdriCristi✨✨RockStart'
WEBSITE='✨✨RockStart✨✨'


openssl req -sha256 -nodes -newkey rsa:2048 -keyout /home/$USER/$WEBSITE/wordpress/ssl/private/$DNS_NAME.pem -out /home/$USER/$WEBSITE/wordpress/ssl/csr/$DNS_NAME.csr << END
FR
Paris
Paris
AdriCristi
dev_team
AdriCristi_dev_team
leplusbeaucoupoedumonde@alicante.es


END
