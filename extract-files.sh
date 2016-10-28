#!/bin/bash

## usage: extract-files.sh $1 $2
## $1 and $2 are optional
## if $1 = unzip the files will be extracted from zip file (if $1 = anything else 'adb pull' will be used
## $2 specifies the zip file to extract from (default = ../../../${DEVICE}_update.zip)

VENDOR=avus
DEVICE=a84

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
fi
    adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
