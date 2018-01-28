#!/bin/sh

# restore dotnet packages
dotnet restore

# build dotnet
dotnet build

# build docker image
docker build --tag inv-api . 