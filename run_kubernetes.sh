#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=victoroshi/project4demo

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4demo\
    --image=$dockerpath\
    --port=80 --labels app=project4demo

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward project4demo 8000:80

