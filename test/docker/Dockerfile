FROM ubuntu:18.04
MAINTAINER LiaoChen <17211401@bjtu.edu.cn>

# Change apt source
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean

RUN apt update -y \
	&& apt install vim gcc -y
RUN mkdir /test

WORKDIR /test
