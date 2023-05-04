#!/bin/sh

## project
PROJECT_NAME=roncoo-education-admin
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

## build
cnpm install
cnpm run build:prod
