#!/bin/bash

kubectl delete -f appingress.yaml 
kubectl delete -f nginxIngressController.yaml
kubectl delete -f appservice.yaml
kubectl delete -f appservice.yaml.yaml 
kubectl delete -f appdeploy.yaml 
kubectl delete -f rmqservice.yaml 
kubectl delete -f rmqdeploy.yaml 
kubectl delete -f mcservice.yaml 
kubectl delete -f mcdep.yaml
kubectl delete -f dbservice.yaml 
kubectl delete -f dbdeploy.yaml 
kubectl delete -f dbpvc.yaml 
kubectl delete -f secret.yaml 


