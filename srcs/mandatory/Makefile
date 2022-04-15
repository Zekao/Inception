#environement variables
HOME=/home/emaugale

dns:
	@sudo sed -i "s/localhost/emaugale.42.fr/g" /etc/hosts

all: dns
	mkdir -p ${HOME}/data/wp-db
	mkdir -p ${HOME}/data/wp-files
	docker-compose build
	docker-compose up
clean:
	docker volume ls -qf dangling=true | xargs -r docker volume rm
	docker system prune -a
fclean: clean
	rm -rf ${HOME}/data/wp-db
	rm -rf ${HOME}/data/wp-files
re: fclean all

.PHONY: all, clean, fclean, re