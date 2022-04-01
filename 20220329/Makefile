# COMPOSE = docker-compose -p inception -f srcs/docker-compose.yml
COMPOSE = docker-compose -f srcs/docker-compose.yml
# DB=./data/db
# WP=./data/wp

.PHONY: all
all:
	# mkdir -p /home/hyopark/data/DB /home/hyopark/data/WP
	$(COMPOSE) up -d
	
.PHONY: re
re: 
	$(COMPOSE) up -d --build
	
.PHONY: down
down:
	$(COMPOSE) down

.PHONY: clean
clean:
	# rm -rf /home/hyopark/data/DB /home/hyopark/data/WP
	$(COMPOSE) down --rmi all --volumes

.PHONY: fclean
fclean: clean
	docker system prune -a

.PHONY: re
re: fclean all
