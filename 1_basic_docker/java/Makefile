.ONESHELL:
folder_name=java_microservice
tag=java
image_name=basic_docker_ch1


all: clean copy build

copy: clean
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile

buildjar:
	cd service
	pwd
	mvn clean package
	cd ..

builddocker:
	@docker build ./service -t $(image_name):$(tag)

build: buildjar builddocker

clean:
	@rm -rf service

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep ch1 | grep java

run: 
	@docker run -p 8080:8080 --name $(image_name)_$(tag) --rm $(image_name):$(tag)
