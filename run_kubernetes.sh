#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<chloeching/my-project>

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project --generator=run-pod/v1 --image=chloeching/my-project --port=80 --labels app=project

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project 8000:80
