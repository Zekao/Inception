all:
	mkdir /home/emaugale/data/wp-db
	mkdir /home/emaugale/data/wp-files
	docker-compose build
	docker-compose up
clean:
	docker volume ls -qf dangling=true | xargs -r docker volume rm
	docker system prune -a
fclean: clean
	rm -rf /home/emaugale/data/wp-db
	rm -rf /home/emaugale/data/wp-files
