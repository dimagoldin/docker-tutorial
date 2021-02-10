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
