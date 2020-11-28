now=$(date +"%Y%m%d_%H%M%S")
python -m torch.distributed.launch --nproc_per_node=4 train_imagenet.py  \
--config $1 2>&1|tee train-$now.log




