.ONESHELL:
folder_name=java_microservice
tag=java
image_name=basic_docker_ch2


all: clean copy build

copy: clean
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile
	@cp .dockerignore service/.dockerignore
	
builddocker:
	@docker build ./service -t $(image_name):$(tag)

build: copy builddocker

clean:
	@rm -rf service

run: 
	@docker run -p 8080:8080 --name $(image_name)_$(tag) --rm $(image_name):$(tag) 
