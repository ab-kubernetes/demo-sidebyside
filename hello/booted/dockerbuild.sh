#!/bin/bash

prefix=${1:-snowdrop}

docker build -f kubefiles/Dockerfile -t ${prefix}/booted:0.1 .