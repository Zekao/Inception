FROM alpine:3.14

EXPOSE 80
EXPOSE 443

# update nginx

RUN apk add --no-cache nginx openssl gettext && \
    rm -rf /var/cache/apk/*

# creating directory for the webbsite
RUN mkdir -p /var/www/html/

# Add infos about my domain
ARG DOMAIN_NAME
ARG NGINX_CERT
ARG NGINX_KEY


# SSL creating repos
RUN mkdir -p /etc/nginx/ssl/private &&\
    mkdir -p /etc/nginx/ssl/certs

# SSL generating cert
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048  \
        -out /etc/nginx/ssl/certs/emaugale.pem \
        -keyout /etc/nginx/ssl/private/emaugale.key \
        -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=emaugale.42.fr/CN=emaugale.42.fr/"

RUN mkdir -p /run/nginx
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]