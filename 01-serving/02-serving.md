# Deploying your Service

At the end of this chapter you will be able to  deploy your very first application as Knative service using OpenShift Severless.

## Explore the Service

Before you deploy the serverless service, let us take a moment to  understand its structure

Open the file **basics/service.yaml** `/root/basics/service.yaml`{{open}}

/*TODO some explanation about the service yaml*/

## Deploy the service

To deploy the service execute `oc apply -n knativetutorial -f basics/service.yaml`{{execute}}

As it will take some time for the service to come up you can watch the status using the command `oc get -n knativetutorial get pods -w`{{execute}}

A successful service deployment will show the following greeter pods:

```shell

```

## See what you have deployed

The Knative Service deployment will create many Knative resources, the following commands will help you to query and find what has been deployed.

### service

`oc apply -n knativetutorial services.serving.knative.dev`{{execute}}

### configuration

`oc apply -n knativetutorial configurations.serving.knative.dev`{{execute}}

### revisions

`oc apply -n knativetutorial revisions.serving.knative.dev`{{execute}}

### routes

`oc apply -n knativetutorial routes.serving.knative.dev`{{execute}}

## Invoke the service

We need to use the URL returned by knative route to invoke the service, execute the command `curl https://greeter.knativetutorial.[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com)`{{execute}}

The service will return a response like **Hi  greeter => '6fee83923a9f' : 1**

## Scale to zero

The `greeter` service will automatically scale down to zero if it does not get request for approximately 60 seconds. Try watching the service scaling down from [OpenShift Dev Console](https://console-openshift-console-[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com).

/*TODO screen shot of OpenShift Developer Console*/

Try invoking the service again as you did earlier to see the service scaling up.

Awesome! You have successfully deployed your very first serverless service using OpenShift serverless. In next chapter we go a bit deep in understanding how to distribute traffic between multiple revisions of same service.
