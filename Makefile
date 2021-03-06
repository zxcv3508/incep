COMPOSE = docker-compose -f srcs/docker-compose.yml

.PHONY: all
all:
	mkdir -p /home/hyopark/data/DB /home/hyopark/data/WP
	sudo hostnamectl set-hostname hyopark.42.fr
	$(COMPOSE) up -d
	
.PHONY: re
re: 
	$(COMPOSE) up -d --build
	
.PHONY: down
down:
	$(COMPOSE) down

.PHONY: clean
clean:
	rm -rf /home/hyopark/data/DB /home/hyopark/data/WP
	$(COMPOSE) down --rmi all --volumes

.PHONY: fclean
fclean: clean
	docker system prune -a

.PHONY: re
re: fclean all
