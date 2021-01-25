folder_name=java_microservice
tag=java
image_name=basic_docker


all: clean copy builddocker

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile

build: 

buildjar: 
	cd service
	mvn clean

builddocker: 
	@docker build ./service -t $(image_name):$(tag)

clean: 
	@rm -rf service

run: 
	@docker run --rm $(image_name):java 
