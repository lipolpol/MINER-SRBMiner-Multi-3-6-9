FROM ubuntu:22.04

# Set working directory
WORKDIR /app

# Copy miner binary
COPY SRBMiner-MULTI /app/SRBMiner-MULTI

# Make miner executable
RUN chmod +x /app/SRBMiner-MULTI

# Set GPU environment variables for all platforms (NVIDIA, AMD, Intel)
ENV GPU_MAX_HEAP_SIZE=100
ENV GPU_MAX_USE_SYNC_OBJECTS=1
ENV GPU_SINGLE_ALLOC_PERCENT=100
ENV GPU_MAX_ALLOC_PERCENT=100
ENV GPU_MAX_SINGLE_ALLOC_PERCENT=100
ENV GPU_ENABLE_LARGE_ALLOCATION=100
ENV GPU_MAX_WORKGROUP_SIZE=1024
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

# Add health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
  CMD pgrep -f SRBMiner-MULTI || exit 1

# Run miner with your configuration
CMD ["./SRBMiner-MULTI", "--algorithm", "pearlhash", "--pool", "de.pearl.herominers.com:1200", "--wallet", "prl1p4s3kmew9733qejmxe99qdkarp43rut2qrqra4j0utyj640dh3xzq8m0jt4", "--worker", "SALAD", "--password", "1", "--cpu-threads", "0"]

# Docker Hub: lipolpol/minersrbminermulti369
# Supports: NVIDIA, AMD, Intel GPUs
