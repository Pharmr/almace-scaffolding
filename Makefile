.PHONY: build-docker
build-docker:
	sudo docker build --rm -t rails:local \
		--build-arg USER_ID=$(shell id -u) \
		--build-arg GROUP_ID=$(shell id -g) \
		.

.PHONY: devc
devc:
	docker run -it -w /opt/app -v ${PWD}:/opt/app -v ${HOME}/.config:/root/.config --network host --entrypoint="/bin/bash" rails:local
