sudo docker build -t gl-torch .
sudo docker run --gpus all -p 8080:8080 --shm-size=256M -it gl-torch