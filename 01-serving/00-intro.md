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

