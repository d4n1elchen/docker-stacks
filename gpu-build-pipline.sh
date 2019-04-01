#!/bin/bash

CUDA_VERSION=${1:-'10.0'}
CUDNN_VERSION=${2:-'7'}
NVTAG=${CUDA_VERSION}'-cudnn'${CUDNN_VERSION}'-devel-ubuntu16.04'
TAG='cuda'${CUDA_VERSION}'-cudnn'${CUDNN_VERSION}
docker build --build-arg BASE_CONTAINER=nvidia/cuda:${NVTAG} -t d4n1el/base-notebook-gpu:${TAG} base-notebook-gpu
docker build --build-arg BASE_CONTAINER=d4n1el/base-notebook-gpu:${TAG} -t d4n1el/minimal-notebook-gpu:${TAG} minimal-notebook-gpu
docker build --build-arg BASE_CONTAINER=d4n1el/minimal-notebook-gpu:${TAG} -t d4n1el/scipy-notebook-gpu:${TAG} scipy-notebook-gpu

docker tag d4n1el/base-notebook-gpu:${TAG} d4n1el/base-notebook-gpu:latest
docker tag d4n1el/minimal-notebook-gpu:${TAG} d4n1el/minimal-notebook-gpu:latest
docker tag d4n1el/scipy-notebook-gpu:${TAG} d4n1el/scipy-notebook-gpu:latest

docker push d4n1el/base-notebook-gpu
docker push d4n1el/minimal-notebook-gpu
docker push d4n1el/scipy-notebook-gpu

