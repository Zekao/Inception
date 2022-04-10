FROM debian:buster

EXPOSE 9000

# update packages and installing all dependences for wordpress
RUN apt-get update -y &&\
    apt-get install -y curl mariadb-client php php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /var/run && \
    mkdir /run/php

COPY ./conf/wp-config.php /etc/
COPY ./conf/script.sh  /etc/


CMD [ "bash", "/etc/launch.sh" ]