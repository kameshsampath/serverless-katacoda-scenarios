#!/bin/bash

echo "Setting up knative"

oc create -f "~/redhat-operators-csc.yaml" 
sleep 120
! oc adm new-project knative-serving
oc apply -f "~/subscription.yaml" 
sleep 120
oc apply -f "~/knative-serving/cr.yaml"

sleep 5; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 5; done