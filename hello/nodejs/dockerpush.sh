#!/bin/bash

# use docker images | grep noded to get the image ID for $1

prefix=${1:-snowdrop}

docker login docker.io

docker push docker.io/${prefix}/noded:0.1

