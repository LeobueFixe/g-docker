.PHONY: build run stop clean

build:
	docker build -t g-docker .

run: build
	docker run -d --name container-g-docker -p 3000:80 g-docker

stop:
	docker stop container-g-docker
	docker rm container-g-docker

clean: stop
	docker rmi g-docker