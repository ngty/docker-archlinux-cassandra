IMG=ngty/archlinux-cassandra
TAG=2.0

build:
	docker build -t $(IMG):$(TAG) .

