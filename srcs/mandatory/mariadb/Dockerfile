FROM	debian:buster
# network port
EXPOSE 3306

# update packages and install mariadb
RUN		apt-get update -y
RUN		apt-get install -y mariadb-server
RUN 	apt-get install -y mariadb-client

# adding my config file to my containe
COPY	conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN 	mkdir -p /var/run/mysqld/
RUN		mkdir -p /run/mysqld/ && chown -R mysql:root /run/mysqld

COPY 	conf/script.sh /var/

RUN     chmod 700 /var/script.sh

CMD 	["bash", "/var/script.sh"]
