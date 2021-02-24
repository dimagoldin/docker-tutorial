.ONESHELL:
tag=bash
image_name=basic_docker_ch1


all: build

builddocker:
	@docker build . -t $(image_name):$(tag)

build: builddocker

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep ch1 | grep bash

run: 
	@docker run --name $(image_name)_$(tag) --rm $(image_name):$(tag)

clean:
	@rm -rf persist