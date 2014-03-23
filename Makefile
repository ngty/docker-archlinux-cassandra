IMG=ngty/archlinux-cassandra
TAG=2.0.x

build:
	docker build -t $(IMG):$(TAG) .

