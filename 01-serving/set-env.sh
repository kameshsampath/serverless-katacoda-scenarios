#!/bin/bash

mkdir -p ~/projects && cd ~/projects

git clone https://github.com/redhat-developer-demos/knative-tutorial

pushd knative-tutorial

rm -rf .git* && rm -rf !("basics"|"scaling")

sleep 150; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 20; done
