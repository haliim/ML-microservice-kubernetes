#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
#docker build [OPTIONS] PATH | URL | -
cd ~/environment/ML-microservice-kubernetes
#docker build --tag=ml .
docker build --tag=halim93/ml-udacity-project .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
#docker run -p 127.0.0.1:8000:80/tcp ml
docker run -p 8000:80 halim93/ml-udacity-project