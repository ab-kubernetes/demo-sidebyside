#!/bin/bash

prefix=${1:-snowdrop}

docker build -f kubefiles/Dockerfile -t ${prefix}/quarked:0.1 .