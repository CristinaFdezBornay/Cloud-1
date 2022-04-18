FROM wordpress:latest

ARG DOMAIN_NAME

COPY ./ssl/certs/$DOMAIN_NAME.crt /etc/ssl/certs/$DOMAIN_NAME.crt
COPY ./ssl/private/$DOMAIN_NAME.pem /etc/ssl/private/$DOMAIN_NAME.pem
COPY ./adricristi.duckdns.org.conf /etc/apache2/sites-available/adricristi.duckdns.org.conf
COPY ./install_rockstart.sh /opt
COPY ./enable_ssl.sh /opt

EXPOSE 80
