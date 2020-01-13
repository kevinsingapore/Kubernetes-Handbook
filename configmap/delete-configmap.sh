#!/usr/bin/bash

deploys=`kubectl get configmap -n default | awk '{print$1}' | tail -n +2`

for i in $deploys
do
    kubectl delete configmap $i -n default
done

