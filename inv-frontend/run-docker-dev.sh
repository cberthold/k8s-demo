#!/bin/sh

# kill the docker container instance if it is running
docker kill inv-frontend > /dev/null 2>&1

# remove the docker container instance if it already exists
docker rm inv-frontend > /dev/null 2>&1

# run the container instance inv-frontend
docker run --name inv-frontend -d -p 7081:7081 k8spidemo/inv-frontend