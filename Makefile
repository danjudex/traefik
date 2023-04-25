install: env-init network-create up

env-init:
	@test -f ./.env || cp .env.example .env	

up:
	@docker compose up -d

network-create:
	@docker network inspect web > /dev/null 2>&1 || docker network create web

logs:
	@docker compose logs -f --tail=100 traefik
