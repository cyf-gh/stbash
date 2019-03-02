#!/bin/bash

LOGPATH=$1
EXTNAME=$2
BASEPATH=/var/log/nginx-backup

mkdir $BASEPATH 2> /dev/null

bk_file_path=$BASEPATH/$(date -d yesterday +%Y%m%d)$EXTNAME.log

mv -i $LOGPATH $bk_file_path
touch $LOGPATH

kill -USR1 `cat /var/run/nginx.pid`
