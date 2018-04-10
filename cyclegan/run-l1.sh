#!/bin/sh

RATIO=$1

python train.py --dataroot "./datasets/brats2013-paired/brats2013_$RATIO" --model "pix2pix" --name "brats2013_pix2pix_$RATIO" --checkpoints_dir "./checkpoints" --no_flip --no_html --input_nc 1 --output_nc 1 --resize_or_crop "scale_width" --serial_batches --lambda_A 1 --lambda_CGAN 0

#--continue_train
