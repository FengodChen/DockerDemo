FROM ubuntu:18.04
MAINTAINER LiaoChen <17211401@bjtu.edu.cn>


# Change apt source
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt-get clean

RUN apt update -y \
	&& apt install vim gcc python3 python3-pip ssh -y

RUN mkdir ~/.pip
RUN echo [global] >> ~/.pip/pip.conf
RUN echo index-url = http://mirrors.aliyun.com/pypi/simple/ >> ~/.pip/pip.conf
RUN echo trusted-host = mirrors.aliyun.com >> ~/.pip/pip.conf
RUN echo service ssh start >> ~/.bashrc

RUN echo "root:123456" | chpasswd
RUN echo PermitRootLogin yes >> /etc/ssh/sshd_config
#RUN echo PermitEmptyPasswords yes >> /etc/ssh/sshd_config
RUN service ssh restart 

RUN pip3 install torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html

RUN mkdir /WorkSpace
WORKDIR /WorkSpace
