#!/bin/bash

cd /root/projects/knative-tutorial && rm -rf !("basics"|"scaling")

sleep 150; while echo && oc get pods -n knative-serving | grep -v -E "(Running|Completed|STATUS)"; do sleep 20; done
