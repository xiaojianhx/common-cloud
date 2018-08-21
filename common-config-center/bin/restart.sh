#!/bin/sh

DIR=/usr/local/deploy/common-config-center
JAR_NAME=common-config-center-1.0.0-SNAPSHOT.jar

kill -9 `ps -ef | grep "$DIR/$JAR_NAME" | grep -v "grep" | awk -F " " '{print $2}'`

sleep 5

nohup /usr/java/jdk1.8.0_144/bin/java -Djava.ext.dirs=lib -jar $DIR/$JAR_NAME &