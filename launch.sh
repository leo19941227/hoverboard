#!/bin/bash

if [ $# != "5" ]; then
    echo "$0 <script> <main_addr> <output_dir> <init_from_image> <num_nodes>"
    exit 1
fi

script=$1
main_addr=$2
output_dir=$3
init_from_image=$4
num_nodes=$5

for i in $(seq 1 $num_nodes);
do
    tmux send-keys -t $i "conda activate audiomar; cd /efs-storage/codebase/mar/; bash ${script} 8 $num_nodes $((i-1)) ${main_addr} ${output_dir} ${init_from_image}" C-m;
done
