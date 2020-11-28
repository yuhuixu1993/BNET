## Detection on MS-COCO
Detection experiments are implemented based on [MMDetection](https://github.com/open-mmlab/mmdetection)

### Requirements
please refer to [MMDetection](https://github.com/open-mmlab/mmdetection)

### Training R50_BNET-3 from scratch
```
cd imagenet/
./train_val.sh configs/config_resnet50BNET_step.yaml
```
### Evaluating performance of a model
Download the pretrained models from [[Google Drive]](https://github.com/open-mmlab/mmdetection)  
```
cd imagenet/
./test.sh configs/config_resnet50BNET_step.yaml
```
