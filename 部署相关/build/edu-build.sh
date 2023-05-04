#!/bin/sh

## project
PROJECT_NAME=roncoo-education
SERVICE_DIR=${HOME}/.project/
echo "---> 项目构建路径：${SERVICE_DIR}${PROJECT_NAME}"

## source
if [ ! -d "${SERVICE_DIR}${PROJECT_NAME}" ];then
  mkdir -p ${SERVICE_DIR}
  cd ${SERVICE_DIR}

  ## git
  git clone -b master https://name:pwd@xxx.git
  
  cd ${PROJECT_NAME}
else
  cd ${SERVICE_DIR}${PROJECT_NAME}
  git pull
fi

## mvn
if [ $# == 2 ];then
  mvn clean package -pl roncoo-education-$1/roncoo-education-$1-$2 -am
else
  mvn clean package
fi
