install: env-init up

env-init:
	@test -f ./.env || cp .env.example .env	

up:
	@docker compose up -d

logs:
	@docker compose logs -f --tail=100 traefik
