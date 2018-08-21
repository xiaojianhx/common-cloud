#!/bin/bash

BAK_DIR=/bak/common-config-center/
time=`date +%Y%m%d_%H%M%S`

THIS_BAK_DIR=$BAK_DIR$time
PROJECT_DIR=/usr/local/deploy/common-config-center
PROJECT_NAME=common-config-center-1.0.0-SNAPSHOT.jar

echo ==========================================================================
echo mkdir dir $THIS_BAK_DIR
mkdir -p $THIS_BAK_DIR

echo [  copy] $PROJECT_DIR/$PROJECT_NAME to $THIS_BAK_DIR
cp $PROJECT_DIR/$PROJECT_NAME $THIS_BAK_DIR

echo [  copy] $PROJECT_DIR/application.properties to $THIS_BAK_DIR
cp $PROJECT_DIR/application.properties $THIS_BAK_DIR

echo [  copy] $PROJECT_DIR/logback*.xml to $THIS_BAK_DIR
cp $PROJECT_DIR/logback*.xml $THIS_BAK_DIR

echo [  copy] $PROJECT_DIR/lib* to $THIS_BAK_DIR
cp -r $PROJECT_DIR/lib* $THIS_BAK_DIR

echo bakup success

ls -l $THIS_BAK_DIR
echo ==========================================================================
