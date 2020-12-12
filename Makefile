.PHONY: build
build:
	sudo docker build --rm -t docs:local \
		--build-arg USER_ID=$(shell id -u) \
		--build-arg GROUP_ID=$(shell id -g) \
		.
.PHONY: run
run:
	docker run -it -w /opt/app -v ${PWD}:/opt/app -v ${HOME}/.config:/root/.config --network host --entrypoint="/bin/bash" docs:local

## RUN THIS INSIDE OF THE CONTAINER!!
.PHONY: serve
serve:
	grunt serve
