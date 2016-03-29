#!/bin/bash

#cd $(dirname $0)/../

TAG=$(cat TAG)

# build docker image
echo -e "\n--- Building $TAG"
docker build -t eu.gcr.io/your_gc_project/buildkite-agent-deis-kube-clients:$TAG .
