#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>


# Step 2:  
# Authenticate & tag
#echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository



aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 437061134968.dkr.ecr.us-east-1.amazonaws.com
docker build -t ml .
docker tag ml:latest 437061134968.dkr.ecr.us-east-1.amazonaws.com/ml:latest
docker push 437061134968.dkr.ecr.us-east-1.amazonaws.com/ml:latest