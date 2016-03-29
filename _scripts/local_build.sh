#!/bin/bash

cd ..

# read TAG from file
TAG=$(cat TAG)

# build docker image
echo -e "\n--- Building $TAG"
docker build -t buildkite-agent-deis-kube-clients:$TAG .
