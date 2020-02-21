#!/bin/bash

echo "Check Knative Serving Pods are up and Running"

sleep 20; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 10; done