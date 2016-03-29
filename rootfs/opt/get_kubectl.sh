#!/bin/bash

# download kubectl client

# get latest k8s version
function get_latest_version_number {
    local -r latest_url="https://storage.googleapis.com/kubernetes-release/release/stable.txt"
    curl -Ss ${latest_url}
}

K8S_VERSION=$(get_latest_version_number)

# download latest version of kubectl
echo "Downloading kubectl $K8S_VERSION"
curl -L https://storage.googleapis.com/kubernetes-release/release/$K8S_VERSION/bin/linux/amd64/kubectl > kubectl
chmod a+x kubectl

