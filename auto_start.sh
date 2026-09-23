#!/bin/bash

# Automatic miner setup script for Salad
# Just run this script on Salad terminal and it will setup everything

echo "=== Setting up SRBMiner-Multi on Salad ==="

# Clone repository
echo "Cloning repository from GitHub..."
git clone https://github.com/lipolpol/MINER-SRBMiner-Multi-3-6-9.git
cd MINER-SRBMiner-Multi-3-6-9

# Set GPU environment variables
export GPU_MAX_HEAP_SIZE=100
export GPU_MAX_USE_SYNC_OBJECTS=1
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_SINGLE_ALLOC_PERCENT=100
export GPU_ENABLE_LARGE_ALLOCATION=100
export GPU_MAX_WORKGROUP_SIZE=1024

# Start miner
echo "Starting SRBMiner-Multi..."
./SRBMiner-MULTI --algorithm pearlhash --pool de.pearl.herominers.com:1200 --wallet prl1p4s3kmew9733qejmxe99qdkarp43rut2qrqra4j0utyj640dh3xzq8m0jt4 --worker SALAD --password 1 --cpu-threads 0
