#!/usr/bin/bash

deploys=`kubectl get deploy -n default | awk '{print$1}' | tail -n +2`

for i in $deploys
do
    kubectl delete deploy $i
done

