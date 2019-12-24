## Introduction

This repository contains the code code for the second part of my Devoxx Belgium [presentation](https://www.youtube.com/watch?v=9wJm8g83vqA&t=2678s) 

## Instructions

All the necessary code can be found in `hello`. That directory contains a hello world application written in 3 different styles.
* Quarkus with Spring API compatibility layer - in the `quarked` subdirectory
* Vanilla Spring Boot  - in the `booted` subdirectory
* Node.js (using the Hapi.js framework) - in the `nodejs` subdirectory  

The idea is to deploy all 3 applications to a Kubernetes cluster that has KNative Service enabled (which for the Devoxx talk was done using Openshift with Serverless capability installed),
and show how quickly the 3 different applications can scale up when receiving a burst of traffic.

### Steps

#### Deployment

Assuming a cluster with KNative Serving is already available, for each one of the applications apply the `kubefiles/knService_docker.yml` file (using `oc apply -f kubefiles/knService_docker.yml` for example).

To force KNative to launch (and keep running) a single pod of the application, you can poll the application by executing the `./knpoller.sh` script (or `./knpoller_ocp4.sh` if using Openshift 4.x).

#### Running the actual scenario

For each of one of the application open two terminals.

In the first terminal will have terminal execute the `./count_ready.sh` script which will constantly monitor and pring the number of pods the application is running.

In the second terminal execute `./knburst.sh` (or `./knburst_ocp4.sh` when using Openshift 4.x). The effect this has is to create a large burst of traffic that the application will have to handle.
KNative will as a result of the traffic burst scale the application up. In this scenario KNative should spin up about 10 to 15 pods of each application.

When executing the scenario, you will see that the Quarkus application will scale up much faster that the other two, followed by Node.js.


#### Checking memory

If you are using a cluster that a dashboard showing memory consumption for each pod, you can see that the pods running the Quarkus application consume the least amount of memory.


  