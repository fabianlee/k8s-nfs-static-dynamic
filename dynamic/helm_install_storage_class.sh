#!/bin/bash

set -x

# by default, NFS diretories get renamed to 'archived-<subdir>', override with storageClass.onDelete
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner --set nfs.server=192.168.2.239 --set nfs.path=/data/nfs1 --set storageClass.onDelete=delete

kubectl get storageclass nfs-client

