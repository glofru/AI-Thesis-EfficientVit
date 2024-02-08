# Use the official NVIDIA CUDA 11 base image
FROM nvidia/cuda:11.8.0-base-ubuntu20.04

# Install necessary dependencies and tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev

# Upgrade pip
RUN pip3 install --upgrade pip

# Install PyTorch with CUDA 11 support and Jupyter
# Adjust the version as necessary; this installs PyTorch 1.7.1, which supports CUDA 11
RUN pip3 install "torch<2.0.0" torchvision torchaudio -f https://download.pytorch.org/whl/cu118/torch_stable.html jupyter
RUN pip3 install numpy pandas torchsummaryX einops scikit-image tqdm matplotlib

# Define working directory and set it as the default
WORKDIR /workspace

COPY . .

# Expose the port Jupyter runs on
EXPOSE 8888

# Start Jupyter server by default
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token='coccobello'"]

# Note: When running this container, ensure you're using NVIDIA's Docker runtime to utilize GPU acceleration.
# sudo docker build -t gl-torch .
# sudo docker run --gpus all -p 8080:8080 -it gl-torch
