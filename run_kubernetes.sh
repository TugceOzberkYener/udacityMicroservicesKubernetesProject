#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tugceozberkyener/udacitymicroservicesprj:latest

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run udacitymicroservicesprj --image=$dockerpath --port=80
kubectl run --generator=run-pod/v1 --image=$dockerpath udacitypredictions

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitypredictions 8000:80
