#!/bin/bash

set -e

set -o pipefail 

NO_COLOR=${NO_COLOR:-""}

if [ -z "$NO_COLOR" ]; then
  header=$'\e[1;33m'
  reset=$'\e[0m'
else
  header=''
  reset=''
fi

function header_text {
  echo "$header$*$reset"
}

header_text "Setting up knative"

ls -ltr ~/
[[ -f ~/redhat-operators-csc.yaml ]] && oc create -f ~/redhat-operators-csc.yaml
sleep 120
! oc adm new-project knative-serving
[[ -f ~/subscription.yaml ]] && oc apply -f ~/subscription.yaml 
sleep 120
[[ -f ~/knative-serving/cr.yaml ]] && oc apply -f ~/knative-serving/cr.yaml

header_text "Waiting for Knative Serving Pods to comeup"

sleep 5; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 5; done