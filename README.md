# Reproducible Cell Segmentation Pipeline (Nextflow)

This project demonstrates how to build a reproducible image segmentation workflow using Cellpose, Nextflow, Conda, and Docker.

## How to run

### 1. Create environment manually (for testing outside Docker)
```bash
conda env create -f envs/cellpose.yml
conda activate cellpose_env
```

### 2. Run pipeline with Nextflow
```bash
nextflow run main.nf
```

### 3. Run with Docker (optional)
```bash
docker build -t cellpose-seg .
docker run -v $PWD:/app cellpose-seg
```
