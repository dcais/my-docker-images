#!/bin/bash
cd `dirname $0`
DOCKER_BUILD_PATH=`pwd`;
PROJ_HOME=${HOME}/git/self/stock

cd ${PROJ_HOME}
mvn -U clean package

JAR_FILE=$(ls -al target/ | grep 'stock.*\.jar$'  | awk '{print $9}')
STOCK_VER=$(ls -al target/ | grep 'stock.*\.jar$'  | awk '{print $9}' | sed 's/stock-//g' | sed 's/\.jar//g')

cp ./target/${JAR_FILE} ${DOCKER_BUILD_PATH}/jar/

cd ${DOCKER_BUILD_PATH}

# docker build -t dockersai/stock:v${STOCK_VER} --uild-arg STOCK_VER=${STOCK_VER} .