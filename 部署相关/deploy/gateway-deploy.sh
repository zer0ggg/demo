#!/bin/sh

## service name
SERVICE_NAME=gateway

## dest jar path
DEST_JAR=${HOME}/service/$SERVICE_NAME.jar

## source jar path
SOURCE_JAR=/data/project/roncoo-education/roncoo-education-app/roncoo-education-app-$SERVICE_NAME/target/$SERVICE_NAME.jar

## delete old jar
echo "delete $DEST_JAR"
rm -f $DEST_JAR

## copy new jar
echo "copy form $SOURCE_JAR"
cp $SOURCE_JAR $DEST_JAR

echo "restart $SERVICE_NAME ..."
## restart
sudo systemctl restart $SERVICE_NAME
