# DataEng

# imaged created using this cmd
docker build -t ssh-linux .


docker run -d -p 2222:22 --name ssh-container ssh-linux

ssh dockeruser@localhost -p 2222

# password : dockerpass

# work as a super user in ubuntu
sudo su
apt-get update

# jupyter notebook installation
pip install "notebook<7"

# Optional
docker exec -it ssh-container bash


docker run -d -p 2222:22 -p 5005-5006:5005-5006 --name ssh-container_v1 ssh-linux




# need to install everything with root enable sudo su

nohup jupyter notebook --ip=0.0.0.0 --port=5005 --no-browser --allow-root &

apt-get install default-jre

apt-get install scala

java -version

scala -version

pip3 install py4j

mkdir myApp
cd myApp

wget https://dlcdn.apache.org/spark/spark-4.0.0/spark-4.0.0-bin-hadoop3.tgz
tar -zxvf spark-4.0.0-bin-hadoop3.tgz 
export SPARK_HOME='home/dockeruser/myapp/spark-4.0.0-bin-hadoop3'


export PATH=$SPARK_HOME:$PATH
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON='jupyter'
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'
export PYSPARK_PYTHON=python3
chmod 777 spark-4.0.0-bin-hadoop3
