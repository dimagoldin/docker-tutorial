.ONESHELL:
folder_name=java_microservice
tag=java
image_name=basic_docker


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

run: 
	@docker run -p 8080:8080 --name basic_docker_java --rm $(image_name):java 
