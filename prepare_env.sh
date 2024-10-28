#!/bin/bash

if [ $# != "1" ]; then
    echo "$0 <num_gpu>"
    exit 1
fi

num_gpu=$1

for i in $(seq 1 ${num_gpu});
do
    tmux send-keys -t $i "conda activate audiomar; cd /efs-storage/codebase/mar/" C-m
done
