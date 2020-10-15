install: env-init network-create up

env-init:
	@test -f ./.env || cp example.env .env	

up:
	@docker-compose up -d

network-create:
	@docker network create web
