IMG_NAME = nginx-https
CTN_NAME = g-docker

build:
	docker build -t $(IMG_NAME) .

run:
	docker run --name $(CTN_NAME) -p 8080:80 -p 443:443 $(CTN_NAME)

stop:
	docker stop $(CTN_NAME) || true
	docker rm $(CTN_NAME) || true

clean:
	docker rmi $(IMG_NAME)
