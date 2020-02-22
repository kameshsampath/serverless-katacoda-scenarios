# Preparing Exercises Environment


## Verify Installation

Check all pods are running in `knative-serving` namespace by executing the command `oc get -n knative-serving pods`{{execute T1}}

## Login as developer

To deploy the exercises, you need to use `developer` user. Login as developer user `oc login -u developer -p developer`{{execute T1}}

## Tutorial project

All the exercises will be deployed into an OpenShift project called `knativetutorial`, you can create the project by running executing the command  `oc new-project knativetutorial`{{execute T1}}

There we go! You are all set to kickstart your serverless journey with **OpenShift Serverless**. Click continue to go to next module on how to deploy your first severless service.
