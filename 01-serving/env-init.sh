#!/bin/bash
oc create -f "~/redhat-operators-csc.yaml" 
sleep 120
! oc adm new-project knative-serving
oc apply -f "~/subscription.yaml" 
sleep 120
oc apply -f "~/knative-serving/cr.yaml"
