all:
	${info Try out: `make run`}

build:
	docker build -t ksql .

dev: build
	docker run -it \
		--volume=$(HOME)/.kube:/root/.kube \
		--volume=`pwd`:/opt/ksql \
			ksql /bin/bash

run: build
	docker run -it \
		--volume=$(HOME)/.kube:/root/.kube \
			ksql
