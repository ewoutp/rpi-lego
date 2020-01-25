all: docker 

.PHONY: docker
docker:
	docker build -t ewoutp/rpi-lego .
