install: ##@Docker Build or rebuild services
	docker-compose -f infrastructure/docker/docker-compose-local.yml -p beguee up --build -d

build: ##@Docker Build composer
	docker-compose -f infrastructure/docker/docker-compose-build.yml up --build

start: ##@Docker start container
	docker-compose -f infrastructure/docker/docker-compose-local.yml -p beguee-network up -d

stop: ##@Docker stop container
	docker-compose -f infrastructure/docker/docker-compose-local.yml -p beguee-network stop

clean: stop ##@Docker clear all images
	docker rmi -f $$(docker images -q)
