folder_name=java_microservice
tag=java
image_name=basic_docker


all: clean copy builddocker

copy: 
	@cp -r ../../$(folder_name)/ service
	@cp Dockerfile service/Dockerfile

build: buildjar builddocker

buildjar: 
	cd service
	mvn clean package
	cd ..

builddocker: 
	@docker build ./service -t $(image_name):$(tag)

cleantarget:
	cd service
	mvn clean
	cd ..

clean: cleantarget
	@rm -rf service

run: 
	@docker run --rm $(image_name):java 
