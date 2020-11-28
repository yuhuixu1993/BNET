## Detection on MS-COCO
Detection experiments are implemented based on [MMDetection](https://github.com/open-mmlab/mmdetection)

### Requirements
please refer to [MMDetection](https://github.com/open-mmlab/mmdetection)

### Usage
We give an example of Faster-RCNN with ResNet50(BNET-5).
#### Training with 1x lr schedule

Download the pretrained R50_BNET-5.pth from [[Google Drive]](https://drive.google.com/drive/folders/1lwyQgoKA-hf1EguT7zh8BgriM-B1LWQm)
```
./tools/dist_train.sh configs/bnet/faster_rcnn_r50_fpn_1x_coco_bnet5.py 8
```
#### Evaluation
Download the pretrained Faster_R50_BNET-5.pth from [[Google Drive]](https://drive.google.com/drive/folders/1PgHChbHq6uI2RafFNhcWVHAMDOjua3QE)
```
python tools/test.py configs/bnet/faster_rcnn_r50_fpn_1x_coco_bnet5.py Faster_R50_BNET-5.pth --eval bbox
```
