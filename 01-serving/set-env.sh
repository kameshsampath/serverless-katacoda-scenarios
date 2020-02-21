#!/bin/bash

set -o pipefail 

echo "Installing OpenShift Serverless"

ls -ltr /root

# [[ -f /root/redhat-operators-csc.yaml ]] && oc create -f /root/redhat-operators-csc.yaml

# sleep 30

# ! oc adm new-project knative-serving

# [[ -f /root/subscription.yaml ]] && oc apply -f /root/subscription.yaml 

# sleep 120

# [[ -f /root/knative-serving/cr.yaml ]] && oc apply -f /root/knative-serving/cr.yaml

# echo "Waiting for Knative Serving Pods to comeup"

# sleep 5; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 5; done