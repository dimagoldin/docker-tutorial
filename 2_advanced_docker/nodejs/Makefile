folder_name = nodejs_microservice
tag = nodejs
image_name = basic_docker_ch2


all: clean copy build

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile
	@cp .dockerignore service/.dockerignore

builddocker: 
	@docker build ./service -t $(image_name):$(tag)
	
build: builddocker

clean: 
	@rm -rf service

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep ch2 | grep nodejs

run: 
	@docker run --name $(image_name)_$(tag) --port 3000:3000 --rm $(image_name):$(tag)
