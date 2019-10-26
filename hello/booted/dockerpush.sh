#!/bin/bash

# use docker images | grep booted to get the image ID for $1

docker login docker.io

docker push docker.io/geoand/booted:0.1

