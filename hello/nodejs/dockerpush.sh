#!/bin/bash

# use docker images | grep noded to get the image ID for $1

docker login docker.io

docker push docker.io/geoand/noded:0.1

