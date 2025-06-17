#!/bin/bash

echo "Building Docker Image"
docker build -t static-site:v1 ../docker

echo "Stopping old container if running.."
docker rm -f static-site-container 2>/dev/null

echo "Running new container"
docker run -d --name static-site-container -p 8090:80 static-site:v1
