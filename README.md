# Batch Normalization with Enhanced Linear Transformation

This repository provides the PyTorch implementation of [Batch Normalization with Enhanced Linear Transformation](https://github.com/yuhuixu1993/BNET/edit/main/README.md)

## Update
- 11.27.2020: Pretrained models are released.
- 11.26.2020: The code of Image Classification and Object Detection are released.

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
./train_val.sh configs/config_resnet50BNET-3_step.yaml
```
### Evaluating performance of a model
Download the pretrained models from [[Google Drive]](https://drive.google.com/drive/folders/1lwyQgoKA-hf1EguT7zh8BgriM-B1LWQm?usp=sharing)  
```
./test.sh configs/config_resnet50BNET-3_step.yaml
```
