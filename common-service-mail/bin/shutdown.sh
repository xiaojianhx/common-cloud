#!/bin/bash
kill -9 `ps -ef | grep common-service-mail-1.0.0-SNAPSHOT.jar | grep -v grep | awk -F ' ' '{print $2}'`