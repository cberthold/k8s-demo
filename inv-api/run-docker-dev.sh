#!/bin/sh

# kill the docker container instance if it is running
docker kill inv-api > /dev/null 2>&1

# remove the docker container instance if it already exists
docker rm inv-api > /dev/null 2>&1

# run the container instance inv-api
docker run --name inv-api -d -p 8081:8081 inv-api