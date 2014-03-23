IMG=ngty/archlinux-cassandra

build:
	docker build -t $(IMG) .

push: build
	docker push $(IMG)
