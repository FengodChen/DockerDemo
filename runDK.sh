#! /bin/bash
PWD=`pwd`
docker run -itv $PWD:/test test:v1.0
