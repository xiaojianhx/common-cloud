#!/bin/bash

PP=common-service-mail
kill -9 `ps -ef | grep $PP-1.0.0-SNAPSHOT.jar | grep -v grep | awk -F ' ' '{print $2}'`

sleep 5

nohup /usr/java/jdk1.8.0_144/bin/java -Djava.ext.dirs=lib -jar /usr/local/deploy/$PP/$PP-1.0.0-SNAPSHOT.jar &
