
IMG_NAME = g-docker
CTN_NAME = container-g-docker

build:
    docker build -t g-docker .

run: build
    docker run -d --name container-g-docker -p 3000:80 g-docker

stop:
    docker stop container-g-docker || true
    docker rm container-g-docker || true

clean:
    docker rmi g-docker || true