## Detection on MS-COCO
Detection experiments are implemented based on [MMDetection](https://github.com/open-mmlab/mmdetection)

### Requirements
please refer to [MMDetection](https://github.com/open-mmlab/mmdetection)

### Usage
We give an example of training Faster-RCNN with ResNet50(BNET-5).
Download the pretrained R50_BNET-5.pth from [[Google Drive]](https://drive.google.com/drive/folders/1lwyQgoKA-hf1EguT7zh8BgriM-B1LWQm)
```
cd imagenet/
./train_val.sh configs/config_resnet50BNET_step.yaml
```
### Evaluating performance of a model
  
```
cd imagenet/
./test.sh configs/config_resnet50BNET_step.yaml
```
