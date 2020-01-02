#!/bin/bash

prefix=${1:-snowdrop}

docker build -f kubefiles/Dockerfile -t ${prefix}/noded:0.1 .