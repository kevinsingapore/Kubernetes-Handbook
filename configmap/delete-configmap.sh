#!/usr/bin/bash

namespace=${NAMESPACE}

deploys=`kubectl get configmap -n $namespace | awk '{print$1}' | tail -n +2`

for i in $deploys
do
    kubectl delete configmap $i -n $namespace
done

