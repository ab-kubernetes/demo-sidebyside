#!/bin/bash

# use docker images | grep quarked to get the image ID for $1

docker login docker.io

docker push docker.io/geoand/quarked:1.0.0

