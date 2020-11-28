## Detection on MS-COCO
Detection experiments are implemented based on [MMDetection](https://github.com/open-mmlab/mmdetection)

### Requirements
please refer to [MMDetection](https://github.com/open-mmlab/mmdetection)

### Usage
We give an example of training Faster-RCNN with ResNet50(BNET-5).

Download the pretrained R50_BNET-5.pth from [[Google Drive]](https://drive.google.com/drive/folders/1lwyQgoKA-hf1EguT7zh8BgriM-B1LWQm)
```
./tools/dist_train.sh configs/bnet/faster_rcnn_r50_fpn_1x_coco_bnet5.py 8
```
### Evaluating performance of a model
Download the pretrained Faster_R50_BNET-5.pth from [[Google Drive]](https://drive.google.com/drive/folders/1PgHChbHq6uI2RafFNhcWVHAMDOjua3QE)
```
python tools/test.py configs/bnet/faster_rcnn_r50_fpn_1x_coco_bnet5.py Faster_R50_BNET-5.pth --eval bbox
```
