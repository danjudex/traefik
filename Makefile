install: network-create up

up:
	@docker-compose up -d

network-create:
	@docker network create web
