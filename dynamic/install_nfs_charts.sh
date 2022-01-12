#!/bin/bash

set -x

helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner --set nfs.server=192.168.2.239 --set nfs.path=/data/nfs1

kubectl get storageclass nfs-client

