#!/bin/bash

TMP_DIR=/tmp
PROJECT_DIR=/usr/local/deploy/common-config-center
PROJECT_NAME=common-config-center-1.0.0-SNAPSHOT.jar
TAR_NAME=common-config-center-1.0.0-SNAPSHOT-fat.tar.gz

echo ==========================================================================
echo [      sh] $PROJECT_DIR/bakup.sh
sh $PROJECT_DIR/bakup.sh

echo [  rm -rf] $PROJECT_DIR/crontab-1.0.0-SNAPSHOT.jar
rm -rf $PROJECT_DIR/crontab-1.0.0-SNAPSHOT.jar

echo [  rm -rf] $PROJECT_DIR/lib*
rm -rf $PROJECT_DIR/lib*

echo [    move] $TMP_DIR/$TAR_NAME to $PROJECT_DIR
mv $TMP_DIR/$TAR_NAME $PROJECT_DIR

echo [ tar zxf] $PROJECT_DIR/$TAR_NAME -C $PROJECT_DIR/
tar -zxf $PROJECT_DIR/$TAR_NAME -C $PROJECT_DIR/

echo [  rm -rf] $PROJECT_DIR/$TAR_NAME
rm -rf $PROJECT_DIR/$TAR_NAME

echo [   chmod] -R 777 $PROJECT_DIR/
chmod -R 777 $PROJECT_DIR/

echo [ restart]
sh $PROJECT_DIR/restart.sh