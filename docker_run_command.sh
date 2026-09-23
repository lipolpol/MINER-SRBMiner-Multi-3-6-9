#!/bin/bash

# Docker Run Command for SRBMiner-Multi on Salad
# First build the image: docker build -t srbminer-multi:latest .

docker run -d \
  --name srbminer-multi \
  --restart unless-stopped \
  -e GPU_MAX_HEAP_SIZE=100 \
  -e GPU_MAX_USE_SYNC_OBJECTS=1 \
  -e GPU_SINGLE_ALLOC_PERCENT=100 \
  -e GPU_MAX_ALLOC_PERCENT=100 \
  -e GPU_MAX_SINGLE_ALLOC_PERCENT=100 \
  -e GPU_ENABLE_LARGE_ALLOCATION=100 \
  -e GPU_MAX_WORKGROUP_SIZE=1024 \
  --gpus all \
  srbminer-multi:latest
