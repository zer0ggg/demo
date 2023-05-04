#!/bin/sh

PROJECT_NAME=roncoo-education-admin
DEST_PATH=/opt/nginx/html/admin
sudo rm -rf ${DEST_PATH}
sudo cp -r /data/project/${PROJECT_NAME}/dist ${DEST_PATH}
echo "---> ${PROJECT_NAME} deploy success"
