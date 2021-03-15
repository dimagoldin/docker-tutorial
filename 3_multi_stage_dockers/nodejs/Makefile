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
	@docker run -d --name $(image_name)_$(tag) -p 8080:8080 --rm $(image_name):$(tag)

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep basic_docker_ch3 | sort