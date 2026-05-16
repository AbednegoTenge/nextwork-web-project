#!/bin/bash

SYSTEMCTL=/usr/bin/systemctl

isExistApp="$(pgrep httpd)"
if [[ -n $isExistApp ]]; then
    $SYSTEMCTL stop httpd.service
fi

isExistApp="$(pgrep tomcat)"
if [[ -n $isExistApp ]]; then
    $SYSTEMCTL stop tomcat.service
fi