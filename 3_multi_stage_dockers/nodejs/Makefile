folder_name = nodejs_microservice
tag = nodejs
image_name = basic_docker_ch3


all: clean copy builddocker

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile
	@cp .dockerignore service/.dockerignore

builddocker: 
	@docker build ./service -t $(image_name):$(tag)
	
build: builddocker

clean: 
	@rm -rf service

run: 
	@docker run --name $(image_name)_$(tag) --port 8080:8080 --rm $(image_name):$(tag)
