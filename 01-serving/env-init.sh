#!/bin/bash
set -o pipefail 

mkdir -p /root/{02-serving,03-traffic-distribution,04-scaling}

echo "Installing OpenShift Serverless"

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/redhat-operators-csc.yaml

sleep 30

! oc adm new-project knative-serving

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/subscription.yaml 

sleep 60

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/cr.yaml 

sleep 30