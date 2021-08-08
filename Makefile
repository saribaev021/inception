
.PHONY: all clean fclean re

all:
	docker-compose  -f ./srcs/docker-compose.yml --env-file ./srcs/.env up --build -d 
clean:
	docker-compose -f ./srcs/docker-compose.yml --env-file ./srcs/.env down 
fclean: clean
	docker container prune -f
re: fclean all
