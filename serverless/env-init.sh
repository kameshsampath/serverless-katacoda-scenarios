#!/bin/bash
oc create -f "~/install/redhat-operators-csc.yaml" 
sleep 120
! oc adm new-project knative-serving
oc apply -f "~/install/subscription.yaml" 
sleep 120
oc apply -f "~/install/knative-serving/cr.yaml"
