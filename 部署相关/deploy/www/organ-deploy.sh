#!/bin/sh

PROJECT_NAME=roncoo-education-organ
DEST_PATH=/opt/nginx/html/organ
sudo rm -rf ${DEST_PATH}
sudo cp -r /data/project/${PROJECT_NAME}/dist ${DEST_PATH}
echo "---> ${PROJECT_NAME} deploy success"
