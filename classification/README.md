## Classification on ImageNet
Classification experiments are built based on [SN](https://github.com/yuhuixu1993/Switchable-Normalization/edit/master/imagenet)

### Requirements
- python packages
  - pytorch>=0.4.0
  - torchvision>=0.2.1
  - tensorboardX
  - pyyaml
### Training R50_BNET-3 from scratch
```
cd imagenet/
./train_val.sh configs/config_resnet50BNET_step.yaml
```
### Evaluating performance of a model
Download the pretrained models from [[Google Drive]](https://drive.google.com/drive/folders/1lwyQgoKA-hf1EguT7zh8BgriM-B1LWQm?usp=sharing)  
```
cd imagenet/
./test.sh configs/config_resnet50BNET_step.yaml
```
