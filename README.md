# Buildkite Agent Docker image with support for pushing to Kubernetes and Deis clusters.

It is based on [Andy Nicholson buildkite_agent_deis_client](https://github.com/anicholson/buildkite_agent_deis_client)

This docker image works exactly as the original full-featured Buildkite Agent, with two additions:

> When the container is created, it logs in to the specified Kubernetes cluster.

Specify your Kubernetes cluster credentials with the `kube/config` file via Kubernetes secret

> When the container is created, it logs in to the specified Deis cluster.

Specify your Deis cluster credentials with these environment variables via Kubernetes secret:

* `DEIS_CONTROLLER` => The URL of the Deis controller to login to
* `DEIS_USERNAME`   => Your Deis cluster username
* `DEIS_PASSWORD`   => Your Deis cluster password

### Todo
Add the Helm chart for the easy installation
