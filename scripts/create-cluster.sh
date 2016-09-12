#!/bin/bash

# set the zone
gcloud config set compute/zone us-west1-a

# ensure kubectl is installed
gcloud components install kubectl

# create container cluster
gcloud container clusters create myfirst-cluster

# start hello-world pod
kubectl run hello-world --image=quay.io/jmarley/gcloud-testing:latest --port=8080

# expose pod to outside World
kubectl expose deployment hello-world --port=8080 --type="LoadBalancer"
