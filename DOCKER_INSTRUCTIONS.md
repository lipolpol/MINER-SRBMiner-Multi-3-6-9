# Docker Instructions for SRBMiner-Multi

## Build Docker Image

```bash
cd "/home/ubuntu/Downloads/TO NA GITHUB/MINER SRBMiner-Multi-3-6-9"
docker build -t lipolpol/minersrbminermulti369:latest .
```

## Login to Docker Hub

```bash
docker login -u lipolpol
# Enter your Docker Hub access token
```

## Push to Docker Hub

```bash
docker push lipolpol/minersrbminermulti369:latest
```

## Docker Run Command for Salad

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
  lipolpol/minersrbminermulti369:latest
```

## Testing Locally

```bash
docker run -it --rm \
  --gpus all \
  lipolpol/minersrbminermulti369:latest
```
