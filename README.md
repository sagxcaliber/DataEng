# DataEng

# imaged created using this cmd
docker build -t ssh-linux .


docker run -d -p 2222:22 --name ssh-container ssh-linux

ssh dockeruser@localhost -p 2222

# password : dockerpass


# Optional
docker exec -it ssh-container bash


DataEng % docker run -d -p 2222:22 -p 5005-5010:5005-5010 --name ssh-container_v1 ssh-linux


# jupyter notebook installation
pip install "notebook<7"

# need to install everything with root enable sudo su

nohup jupyter notebook --ip=0.0.0.0 --port=5005 --no-browser --allow-root &
