#!/bin/bash

echo "Wait for Knative Serving Pods are up and Running"

sleep 150; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 20; done

oc adm new-project knativetutorial
oc adm policy add-role-to-user admin developer -n knativetutorial
