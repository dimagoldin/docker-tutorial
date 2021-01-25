folder_name = nodejs_microservice
tag = nodejs
docker_name = basic_docker


all: clean copy builddocker

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile

builddocker: 
	@docker build ./service -t basic_docker:$(tag)

clean: 
	@rm -rf service

run: 
	@docker run --env FORCE_COLOR=1 --rm  $(docker_name):java  
