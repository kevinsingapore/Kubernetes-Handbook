#!/usr/bin/bash

deploys=`kubectl get service -n default | awk '{print$1}' | tail -n +2`

for i in $deploys
do
    kubectl delete service $i
done

