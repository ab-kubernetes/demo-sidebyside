#!/bin/bash


printf "%2d" 0
while true
do
NUM=$(kubectl get pods -l serving.knative.dev/service=quarked -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}' | grep -ow "True" | wc -l)
tput cub 3; tput el;
printf "%2d" ${NUM}
sleep 1
done