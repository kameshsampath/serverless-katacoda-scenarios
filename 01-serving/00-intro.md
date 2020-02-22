# Introduction

Deploying applications as Serverless services is becoming a popular architectural style. It seems like many organizations assume that _Functions as a Service (FaaS)_ is serverless. But we think it is more accurate to say that FaaS is one way to do serverless, not the only way. This raises a super critical question for enterprises that may have applications which could be monolith or a microservice: What is the easiest path to serverless application deployment?

The answer is a platform that can run serverless workloads, while enabling you to have complete control how to configure, build, deploy and run. Ideally, the platform  that supports deploying the applications as linux containers. In this chapter we introduce you to one such platform -- https://knative.dev[Knative] --, that helps you to run the serverless workloads in a Kubernetes-native way.

At the end of this module you will understand:

* Deploy a Knative service.
* Deploy multiple revisions of a service.
* Run different revisions of a service via traffic definition.
* Install Knative Client
* Create, update, list and delete Knative service
* Create, update, list and delete Knative service revisions
* List Knative service routes

## Verify Installation

Check all pods are running in `knative-serving` namespace by executing the command `oc get -n knative-serving pods`{{execute T1}}

## Login as developer

To deploy the exercises, you need to use `developer` user. Login as developer user `oc login -u developer -p developer`{{execute T1}}

## Tutorial project

All the exercises will be deployed into an OpenShift project called `knativetutorial`, you can create the project by running executing the command  `oc new-project knativetutorial`{{execute T1}}

There we go! You are all set to kickstart your serverless journey with **OpenShift Serverless**. Click continue to go to next module on how to deploy your first severless service.
