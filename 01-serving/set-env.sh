#!/bin/bash

mkdir -p ~/projects/knative-tutorial/{02-basics,03-traffic-distribution,04-scaling} && cd ~/projects/knative-tutorial/02-basics

echo "Wait for Knative Serving Pods are up and Running"

sleep 150; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 20; done

