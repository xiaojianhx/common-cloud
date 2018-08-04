#!/bin/bash

PP=common-config-center

time=`date +%Y%m%d_%H%M%S`
BAK_DIR=/bak/$PP/$time

PROJECT_DIR=/usr/local/deploy/$PP
PROJECT_NAME=$PP-1.0.0-SNAPSHOT.jar

echo ==========================================================================
echo mkdir dir $BAK_DIR
mkdir $BAK_DIR

echo copy $PROJECT_DIR/$PROJECT_NAME to $BAK_DIR
cp $PROJECT_DIR/$PROJECT_NAME $BAK_DIR

echo copy $PROJECT_DIR/application.properties to $BAK_DIR
cp $PROJECT_DIR/application.properties $BAK_DIR

echo copy $PROJECT_DIR/logback*.xml to $BAK_DIR
cp $PROJECT_DIR/logback*.xml $BAK_DIR

echo copy $PROJECT_DIR/lib* to $BAK_DIR
cp -r $PROJECT_DIR/lib* $BAK_DIR

echo bakup success

ls -l $BAK_DIR
echo ==========================================================================
