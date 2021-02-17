.ONESHELL:
folder_name = nodejs_microservice
tag = nodejs
image_name = basic_docker_ch1


all: clean copy build

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile

builddocker: 
	@docker build ./service -t $(image_name):$(tag)
	

buildservice:
	cd service
	npm install

build: buildservice builddocker

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep ch1 | grep nodejs

clean: 
	@rm -rf service

run: 
	@docker run --name $(image_name)_$(tag) --port 3000:3000 --rm $(image_name):$(tag)
