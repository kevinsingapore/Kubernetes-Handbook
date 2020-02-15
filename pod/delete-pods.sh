#!/usr/bin/bash

pods=`kubectl get pods -n rook-ceph | awk '{print $1}' | tail -n +2`

echo $pods

for i in $pods
do
  kubectl -n rook-ceph delete pods $i --force --grace-period=0
done
