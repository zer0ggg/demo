#!/bin/sh

# name
PROJECT_NAME=roncoo-education-web
## source path
SOURCE_PATH=/data/project/${PROJECT_NAME}
## dest path
DEST_PATH=${HOME}/.web

## delete deploy dir
rm -rf /tmp/empty
mkdir /tmp/empty
rsync --delete-before -d /tmp/empty/ ${DEST_PATH}

echo "---> ${PROJECT_NAME} deploy ..."
## copy new dir
cp -r ${SOURCE_PATH} ${DEST_PATH}

## run
cd ${DEST_PATH}/${PROJECT_NAME}
pm2 delete ${PROJECT_NAME}
pm2 start yarn --name ${PROJECT_NAME} -- run start:modern
echo "---> ${PROJECT_NAME} start success"
