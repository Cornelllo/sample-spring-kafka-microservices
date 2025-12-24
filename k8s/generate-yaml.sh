#!bin/bash

for n in $(kubectl get -o=name pvc,configmap,secret,statefulset,service,deployment,serviceaccount,hpa,job,cronjob);
do
    mkdir -p $(dirname $n)
    kubectl get -o=yaml $n > $n.yaml
done;