#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="cjbaccus/udacity_microservices"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlsmicrosvc\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=8080 --labels app=udacitymlsmicrosvc

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl port-forward mlsmicrosvc 8080:8080
