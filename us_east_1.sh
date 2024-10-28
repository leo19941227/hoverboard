#!/bin/bash

if [ $# != "1" ]; then
    echo "$0 <file/dir>"
    exit 1
fi

target=$1
nova --region us-east-1 cluster rsync --delete -c 39a97dbd-3def-437b-bbd3-9bacf392dd76 .git/ /efs-storage/codebase/mar/.git/
