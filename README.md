<<<<<<< HEAD
# Reproducible Cell Segmentation Pipeline (Nextflow)

This project demonstrates how to build a **reproducible, scalable image segmentation workflow** using [Cellpose](https://www.cellpose.org/), [Nextflow](https://www.nextflow.io/), and Conda or Docker.  
It segments microscopy images based on DAPI staining using a deep learning model.

---

## 📁 Folder Structure

```
├── images/             # Input microscopy images (.png)
├── masks/              # Output segmentation masks
├── segment.py          # Python script using Cellpose
├── main.nf             # Nextflow workflow
├── nextflow.config     # Resource configuration
├── envs/cellpose.yml   # Conda environment
├── Dockerfile          # Optional Docker container
```

---

## 🚀 How to Run the Pipeline

### 🔧 Option 1: With Conda

1. **Create the environment**
   ```bash
   conda env create -f envs/cellpose.yml
   conda activate cellpose_env
   ```

2. **Run the workflow**
   ```bash
   nextflow run main.nf
   ```

---

### 🐳 Option 2: With Docker

1. **Build the container**
   ```bash
   docker build -t cellpose-seg .
   ```

2. **Run the pipeline**
   ```bash
   docker run -v $PWD:/app cellpose-seg
   ```

---

## 📦 Requirements

- Python ≥ 3.10
- Nextflow ≥ 22
- Conda (or Docker)
- Cellpose, scikit-image, matplotlib

---

## 📌 Notes

- Output segmentation masks are saved in the `/masks/` folder.
- You can adapt `segment.py` to use different Cellpose models (e.g., `nuclei`).
- Designed for single-channel DAPI input (`img[:, :, 2]`).

---

## 👩‍🔬 Author

**Llilians Calvo**  
This project is part of a portfolio showcasing reproducible bioinformatics workflows.  
Feel free to fork, adapt, or reach out for collaboration!
=======
<<<<<<< HEAD
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
=======
# workflow_example
>>>>>>> 0ab5bc0887f39a72e1bc2483dd87f0c35daf8aa3
>>>>>>> 0c0e78594b92003c10c561a669582f261b61557f
