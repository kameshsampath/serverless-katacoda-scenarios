#!/bin/bash
set -o pipefail 

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/redhat-operators-csc.yaml

sleep 30

! oc adm new-project knative-serving

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/subscription.yaml 

sleep 60

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/cr.yaml 

sleep 30

oc adm new-project knativetutorial
oc adm policy add-role-to-user admin developer -n knativetutorial