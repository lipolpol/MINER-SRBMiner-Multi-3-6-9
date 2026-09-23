#!/bin/bash

# Complete automatic miner setup script for Salad
# Installs GPU libraries, downloads miner, and starts mining

echo "=== Complete SRBMiner-Multi Setup for Salad ==="

# Update system and install GPU libraries
echo "Installing GPU libraries..."
apt-get update && apt-get install -y \
    libnuma1 \
    libpci3 \
    libgl1-mesa-glx \
    libglu1-mesa \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Clone repository if not already cloned
if [ ! -d "MINER-SRBMiner-Multi-3-6-9" ]; then
    echo "Cloning repository from GitHub..."
    git clone https://github.com/lipolpol/MINER-SRBMiner-Multi-3-6-9.git
fi

cd MINER-SRBMiner-Multi-3-6-9

# Set GPU environment variables
export GPU_MAX_HEAP_SIZE=100
export GPU_MAX_USE_SYNC_OBJECTS=1
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_SINGLE_ALLOC_PERCENT=100
export GPU_ENABLE_LARGE_ALLOCATION=100
export GPU_MAX_WORKGROUP_SIZE=1024

# Make miner executable
chmod +x SRBMiner-MULTI

# Start miner
echo "Starting SRBMiner-Multi..."
./SRBMiner-MULTI --algorithm pearlhash --pool de.pearl.herominers.com:1200 --wallet prl1p4s3kmew9733qejmxe99qdkarp43rut2rqra4j0utyj640dh3xzq8m0jt4 --worker SALAD --password 1 --cpu-threads 0
