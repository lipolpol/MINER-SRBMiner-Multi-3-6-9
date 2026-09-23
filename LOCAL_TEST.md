# Local Testing Instructions

## Build Docker Image Locally

```bash
cd "/home/ubuntu/Downloads/TO NA GITHUB/MINER SRBMiner-Multi-3-6-9"
docker build -t srbminer-multi:test .
```

## Test Locally with GPU

```bash
docker run -it --rm \
  --name srbminer-multi \
  -e GPU_MAX_HEAP_SIZE=100 \
  -e GPU_MAX_USE_SYNC_OBJECTS=1 \
  -e GPU_SINGLE_ALLOC_PERCENT=100 \
  -e GPU_MAX_ALLOC_PERCENT=100 \
  -e GPU_MAX_SINGLE_ALLOC_PERCENT=100 \
  -e GPU_ENABLE_LARGE_ALLOCATION=100 \
  -e GPU_MAX_WORKGROUP_SIZE=1024 \
  --gpus all \
  srbminer-multi:test
```

## Background Mode

```bash
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
  srbminer-multi:test
```

## Check Logs

```bash
docker logs -f srbminer-multi
```

## Stop Container

```bash
docker stop srbminer-multi
docker rm srbminer-multi
```
