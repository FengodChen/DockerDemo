#! /bin/bash

WORKSPACE=~/WorkSpace/PyTorch

docker run -itd -v $WORKSPACE:/WorkSpace -p 10001:22 -p 10002:10002 --name pytorch pytorch:v1.0
