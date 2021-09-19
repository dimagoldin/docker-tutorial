# Installing Kubernetes
There are many different flavors of kubernetes, each with the same API but with different internals.
Kubernetes becase a standard, so anything that supports the Kubernetes API (and thus the CLI kubectl) and the kubernetes specifications, is called kubernetes.

Some examples:
1. Kubernetes - Made by google. Its the original one. good for production.
1. K3s - Very lightweight kubernetes designed to work on even low resource machines such as raspberry pies. good for local development and even production.
1. MicroK8s - developed by canonical (ubuntu). for now mostly for development. is also very lightweight and designed for low resource machines.
1. Minikube - All in One kubernetes for development only. comes with built-in plugins to reduce complexity during local development.
1. Kind - Kubernetes on Docker. Used for CICD and Local Development. also very lightweight.
> Yoo dog, i got a docker that manages other dockers inside that docker.


We will use Kind.
>Make sure you have kubectl installed
```curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64```
```chmod +x ./kind```
```./kind create cluster --name test```
Now open lens and find your cluster in the catalog, should be called something like ```kind-test```
Add the cluster to the hotbar and click it.
Click the cluster and go to ```nodes``` section. You should see one node with status ```Ready```.

Now lets deploy a demo service.
```kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1``` in the terminal inside lens.
Now go to ```workloads``` section and in it ```Pods```
after a minute, you should see one pod with ```Running``` status in green.

Now lets try to see if it is working.
To reach it we would do ```curl http://localhost:8001/version``` but we dont know the IP, because it has an internal IP inside the kubernetes cluster.

So for now, lets create a temporary proxy that will proxy all local network to inside the cluster
```kubectl proxy```
open chrome and go to ```http://localhost:8001/version```.
