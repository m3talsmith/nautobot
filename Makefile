tag := $(shell git rev-parse --abbrev-ref HEAD)
repo := localhost:5000

build:
	docker build -t $(repo)/nautobot:$(tag) .

push:
	docker push $(repo)/nautobot:$(tag)

pull:
	docker pull $(repo)/nautobot:$(tag)

registry:
	docker run --rm -it --network=host alpine ash -c "apk add socat && socat TCP-LISTEN:5000,reuseaddr,fork TCP:$(minikube ip):5000"