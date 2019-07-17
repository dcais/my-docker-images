#!/bin/bash
cd `dirname $0`
DOCKER_BUILD_PATH=`pwd`;
PROJ_HOME=${HOME}/git/self/stock

cd ${PROJ_HOME}
mvn -U clean package

JAR_FILE=$(ls -al target/ | grep 'stock.*\.jar$'  | awk '{print $9}')
STOCK_VER=$(ls -al target/ | grep 'stock.*\.jar$'  | awk '{print $9}' | sed 's/stock-//g' | sed 's/\.jar//g')

rm -fr ${DOCKER_BUILD_PATH}/jar/*.jar
cp ./target/${JAR_FILE} ${DOCKER_BUILD_PATH}/jar/

cd ${DOCKER_BUILD_PATH}

sed -i "" "s/stock-.*\.jar/${JAR_FILE}/g" Dockerfile

# docker build -t dockersai/stock:v${STOCK_VER} --uild-arg STOCK_VER=${STOCK_VER} .
