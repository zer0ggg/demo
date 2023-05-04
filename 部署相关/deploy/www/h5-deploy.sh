#!/bin/sh

PROJECT_NAME=roncoo-education-uni-app
DEST_PATH=/opt/nginx/html/h5
sudo rm -rf ${DEST_PATH}
sudo cp -r /data/project/${PROJECT_NAME}/dist/build/h5 ${DEST_PATH}
echo "---> ${PROJECT_NAME} deploy success"
