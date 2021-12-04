#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
cd ~/environment/ML-microservice-kubernetes
dockerpath=halim93/ml-udacity-project

# Step 2
# Run the Docker Hub container with kubernetes
docker pull halim93/ml-udacity-project:latest
kubectl run ml \
	    --image=halim93/ml-udacity-project \
		--port=80 --labels app=ml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml 8000:80
