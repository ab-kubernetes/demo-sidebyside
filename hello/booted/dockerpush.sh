#!/bin/bash

prefix=${1:-snowdrop}

# use docker images | grep booted to get the image ID for $1

docker login docker.io

docker push docker.io/${prefix}/booted:0.1

