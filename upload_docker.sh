#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
cd ~/environment/ML-microservice-kubernetes
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=halim93/ml-udacity-project


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"


# Step 3:
# Push image to a docker repository
docker push halim93/ml-udacity-project:latest


#aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 437061134968.dkr.ecr.us-east-1.amazonaws.com
#docker build -t ml .
#docker tag ml:latest 437061134968.dkr.ecr.us-east-1.amazonaws.com/ml:latest
#docker push 437061134968.dkr.ecr.us-east-1.amazonaws.com/ml:latest