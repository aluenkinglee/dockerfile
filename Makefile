all: build push
build:
		docker build --platform linux/x86_64 --rm -f Dockerfile -t aluenkinglee/ubuntu.dev:1.0 .
push:
		# docker login -u username -p password harbor（私有仓库）地址
		docker push aluenkinglee/ubuntu.dev:1.0
