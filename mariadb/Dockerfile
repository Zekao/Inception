FROM alpine:3.14

# --- Basic install of MariaDB
RUN			apk -U upgrade && apk add mariadb mariadb-client mariadb-server-utils
# --- Adding my script & allowing it rights to get executed

ADD ./run.sh /
RUN chmod 755 /run.sh

# --- Calling all differents args i need (from my .env file)

ARG MYSQL_HOST
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_ROOT_PASSWORD

# --- Checking if env variables correctly got created
RUN env
# --- creating all dir for sql
RUN			mkdir -p /run/mysqld && mkdir -p /var/lib/mysql
RUN			chown -R mysql:mysql /run/mysqld && chown mysql:mysql /var/lib/mysql
RUN			mariadb-install-db --user=mysql --datadir='/var/lib/mysql'

RUN			chown -R mysql:mysql /etc/my.cnf.d

COPY /run.sh /tmp/run.sh
ENTRYPOINT [ "sh", "/tmp/run.sh" ]