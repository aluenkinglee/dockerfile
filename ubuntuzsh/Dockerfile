FROM aluenkinglee/ubuntudind:latest
ARG DEBIAN_FRONTEND=noninteractive				#设置非交互构建
# 更换源改为阿里源
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade && apt-get install -y zsh && rm -rf /var/lib/apt/lists/*
CMD ["/usr/bin/zsh","-l"]