#! /bin/bash
if [ $UID -ne 0 ] ; then
	echo 'Please use root '

else
	echo \{\"registry-mirrors\":\[\"https://dockerhub.azk8s.cn/\"\]\} > /etc/docker/daemon.json
	systemctl daemon-reload
	systemctl restart docker
fi

