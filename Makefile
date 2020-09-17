build-base:
	docker build -t base -f docker/Dockerfile.base .

build-spark-base: build-base
	docker build -t spark-base -f docker/Dockerfile.spark-base .

build-spark-master: build-spark-base
	docker build -t spark-master -f docker/Dockerfile.spark-master .

build-spark-worker: build-spark-base
	docker build -t spark-worker -f docker/Dockerfile.spark-worker .

build-jupyterlab:
	docker build -t jupyterlab -f docker/Dockerfile.jupyterlab .

up: build-base build-spark-base build-spark-worker build-jupyterlab down
	docker-compose up

down:
	docker-compose down

