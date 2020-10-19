#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=chloeching/my-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=chloeching
docker tag b7b5ba860ea3 chloeching/my-project:latest

# Step 3:
# Push image to a docker repository
docker push chloeching/my-project:latest