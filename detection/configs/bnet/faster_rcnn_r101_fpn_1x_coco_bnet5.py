_base_ = './faster_rcnn_r50_fpn_1x_coco_bnet5.py'
model = dict(pretrained='./R101_BNET-5.pth', backbone=dict(depth=101))
