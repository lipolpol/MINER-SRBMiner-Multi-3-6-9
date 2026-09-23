export GPU_MAX_HEAP_SIZE=100
export GPU_MAX_USE_SYNC_OBJECTS=1
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_SINGLE_ALLOC_PERCENT=100
export GPU_ENABLE_LARGE_ALLOCATION=100
export GPU_MAX_WORKGROUP_SIZE=1024
#!/bin/sh
reset

./SRBMiner-MULTI --algorithm pearlhash --pool de.pearl.herominers.com:1200 --wallet prl1p4s3kmew9733qejmxe99qdkarp43rut2qrqra4j0utyj640dh3xzq8m0jt4 --worker SALAD --password 1 --cpu-threads 0 
