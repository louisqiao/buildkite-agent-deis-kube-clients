#!/bin/bash

# login to gcr.io
docker login -e not@val.id -u _json_key -p "$(cat /etc/service_key/keyfile.json)" https://eu.gcr.io

# read TAG from the file
TAG=$(cat TAG)

# push to GCR
echo "--- Pushing eu.gcr.io/your_gc_project/buildkite-agent-deis-kube-clients:$TAG"
docker push eu.gcr.io/your_gc_project/buildkite-agent-deis-kube-clients:$TAG

# clean up
echo "--- Cleaning up image eu.gcr.io/your_gc_project/buildkite-agent-deis-kube-clients:$TAG"
docker rmi -f eu.gcr.io/your_gc_project/buildkite-agent-deis-kube-clients:$TAG
