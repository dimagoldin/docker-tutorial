all: build size

build: buildsmall buildlarge

buildsmall:
	@docker build . -t manifest:small

buildlarge:
	@docker build . -t manifest:large --build-arg n=100000

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep manifest | sort
