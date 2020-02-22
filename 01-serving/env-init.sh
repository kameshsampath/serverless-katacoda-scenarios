#!/bin/bash
set -o pipefail 

rm -rf ~/projects 

mkdir -p ~/projects

pushd ~/projects

git clone https://github.com/redhat-developer-demos/knative-tutorial.git
pushd knative-tutorial 
# remove all directories except basics/scaling
rm -rf .git* && rm -rf !("basics"|"scaling")

echo "Installing OpenShift Serverless"

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/redhat-operators-csc.yaml

sleep 30

! oc adm new-project knative-serving

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/subscription.yaml 

sleep 60

oc create -f https://raw.githubusercontent.com/redhat-developer-demos/guru-night/master/config/knative-serving/cr.yaml 

sleep 30

oc adm new-project knativetutorial
oc adm policy add-role-to-user admin developer -n knativetutorial