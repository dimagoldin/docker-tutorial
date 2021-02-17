image_name = docker_layers_ch3

all: build size

build: buildsmall buildlarge

buildsmall:
	@docker build . -t $(image_name):small

buildlarge:
	@docker build . -t $(image_name):large --build-arg n=500000

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep manifest | sort
