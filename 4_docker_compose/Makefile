.ONESHELL:
all: clean

start: 
	@docker-compose up -d

.PHONY : clean
clean:
	@rm -rf crud-service/node_modules

startmongo:
	@docker-compose up -d mongodb

stop:
	@docker-compose down -v

build: buildservice1 buildservice2

buildservice1:
	@docker build ./crud-service -t todo_service
	
buildservice2:
	@docker build ./other-service -t other_service
