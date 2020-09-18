# docker-spark
Minimal setup to run Spark on Docker

## Requirements
* Docker

## Getting started
* Enable your Docker deamon
* Run `make up`: it will build all the necessary Docker images, and lunch a mini spark cluster with 2 nodes. Another container will be running jupyterlab

Connect to [jupyterlab](http://localhost:8888) to interact with Spark or to [spark-master](http://localhost:8080) to check the Spark cluster status.
