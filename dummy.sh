#!/bin/bash

INFINITE_EPOCHS=10000000000000

torchrun --nproc_per_node=8 --nnodes=1 --node_rank=0 \
    main_mar.py \
    --img_width 64 --img_height 1024 --vae_embed_dim 8 --vae_stride 4 --patch_size 4 \
    --model mar_base --diffloss_d 3 --diffloss_w 1024 --num_workers 8 \
    --epochs ${INFINITE_EPOCHS} --warmup_epochs 0 --batch_size 28 --blr 1.0e-4 --diffusion_batch_mul 4 \
    --resume pretrained_models/mar/mar_base --output_dir output/dummy/ \
    --audio --init_from_image --label_drop_prob 0.5 \
    --use_cached  \
